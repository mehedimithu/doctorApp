import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/api/api_client.dart';
import 'package:flutter_core/core/app_provider.dart';
import 'package:flutter_core/pref/app_pref.dart';

import '../main/auth/auth_page.dart';
import '../main/auth/bloc/auth_bloc.dart';
import '../main/auth/bloc/auth_event.dart';
import '../main/auth/forgetpassword/ui/forget_password_page.dart';
import '../main/auth/service/auth_service.dart';
import '../main/auth/signup/signup.dart';
import '../main/home/ui/home_page.dart';


AppPreference _pref;
ApiClient _client;
AuthService _authService;

void _init(BuildContext context) {
  _pref = AppProvider.getApplication(context).getAppPreference();
  _client = AppProvider.getApplication(context).getApiClient();
  _authService = AuthService(apiClient: _client, appPreference: _pref);
}

var authRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  _init(context);

  return BlocProvider<AuthenticationBloc>(
    create: (context) {
      return AuthenticationBloc(pref: _pref)..add(AppStarted());
    },
    child: AuthPage(authService: _authService),
  );
});

var registerRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  _init(context);
  return RegisterScreen();
});
//
var homePageRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});
//
var forgotPasswordRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ForgetPassword();
});

class AppRoutes {
  static bool isConfigured = false;

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ROUTE WAS NOT FOUND !!!');
      return;
    });
    router.define(AuthPage.PATH, handler: authRouteHandler);
    // router.define(ForgotPasswordPage.PATH, handler: forgotPasswordRouteHandler);
    // router.define(RegisterPage.PATH, handler: registerRouteHandler);
    // router.define(HomePage.PATH, handler: homePageRouteHandler);
  }
}
