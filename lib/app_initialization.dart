import 'dart:io' as dart_io;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/bloc/login/login_bloc.dart';
import 'package:my_app/errors_&_exceptions/http_exception.dart';
import 'package:my_app/services/business_service.dart';
import 'package:my_app/services/user_service.dart';
import 'package:my_app/utils/api_config.dart';
import 'package:my_app/utils/http.dart';

class AppInitialization {
  static const _apiHost = ApiConfig.host;

  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    final globalKiwiContainer = KiwiContainer();

    late final Http http;

    late final UserService userService;

    try {
      globalKiwiContainer.registerFactory<Http>((container) => Http(dio: Dio(BaseOptions(baseUrl: _apiHost))));

      http = globalKiwiContainer.resolve<Http>();

      globalKiwiContainer.registerFactory<UserService>((container) => UserService(http: http));

      userService = globalKiwiContainer.resolve<UserService>();

      globalKiwiContainer.registerSingleton((container) => LoginBloc(userService));

      globalKiwiContainer.registerFactory<BusinessService>((container) => BusinessService(http: http));
    } on HttpException catch (httpException) {
      if (kDebugMode) {
        print('[AppInitialization.initialize]: [HttpException] error in app initialization: "${httpException.mensagem}"');
      }
    } catch (error, stackTrace) {
      if (kDebugMode) {
        print('[AppInitialization.initialize]: Generic error in app initialization: "$error"\nstackTrace: $stackTrace');
      }

      dart_io.exit(1);
    }
  }
}
