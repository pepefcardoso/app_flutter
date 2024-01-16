import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_app/errors_&_exceptions/http_exception.dart';
import 'package:my_app/services/login_service.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService loginService;

  LoginBloc(this.loginService) : super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      try {
        if (event is RequestLogin) {
          emit(state.copyWith(status: LoginStatus.logging));

          final String token = await loginService.login(event.email, event.password);

          emit(state.copyWith(token: token, status: LoginStatus.logged));
        } else if (event is RequestLogout) {
          emit(state.copyWith(status: LoginStatus.logging));

          await loginService.logout(state.token!);

          emit(state.copyWith(loggedOut: true, status: LoginStatus.notLogged));
        }
      } on HttpException catch (httpException) {
        emit(state.copyWith(error: httpException.mensagem, status: LoginStatus.error));
      } catch (e) {
        emit(state.copyWith(error: e.toString(), status: LoginStatus.error));
      }
    });
  }
}
