import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_app/components/login_store.dart';
import 'package:my_app/errors_&_exceptions/http_exception.dart';
import 'package:my_app/models/user.dart';
import 'package:my_app/services/login_service.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService loginService;
  final LoginStore loginStore;

  LoginBloc({
    required this.loginService,
    required this.loginStore,
    required LoginState state,
  }) : super(state) {
    on<LoginEvent>((event, emit) async {
      try {
        if (event is RequestLogin) {
          emit(state.copyWith(status: LoginStatus.loggingIn));

          final String token = await loginService.login(event.email, event.password);

          final User user = await loginService.getUserData(token: token);

          await loginStore.storeToken(token);
          loginStore.storeLastEmail(event.email);

          emit(state.copyWith(
            status: LoginStatus.loggedIn,
            user: user,
          ));
        } else if (event is RequestLogout) {
          emit(state.copyWith(status: LoginStatus.loggingOut));

          await loginService.logout(token: loginStore.getToken());

          loginStore.revokeToken();

          emit(state.copyWith(status: LoginStatus.loggedOut, loggedOut: true));
        }
      } on HttpException catch (httpException) {
        log(httpException.mensagem);

        emit(state.copyWith(error: httpException.mensagem, status: LoginStatus.error));
      } catch (e) {
        log(e.toString());

        emit(state.copyWith(error: e.toString(), status: LoginStatus.error));
      }
    });
  }
}
