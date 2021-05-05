
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/widget/loading_indicator.dart';
import 'package:pms_telemedicine_flutter/main/auth/service/auth_service.dart';
import 'package:pms_telemedicine_flutter/main/auth/signup/signup.dart';
import 'package:pms_telemedicine_flutter/main/home/ui/home_page.dart';
import 'bloc/auth_bloc.dart';
import 'bloc/bloc.dart';
import 'login/ui/login_page.dart';


class AuthPage extends StatelessWidget {
  static const String PATH = '/';
  final AuthService authService;

  AuthPage({Key key, @required this.authService}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      cubit: BlocProvider.of<AuthenticationBloc>(context),
      builder: _builderHandler,
    );
  }

  Widget _builderHandler(BuildContext context, AuthenticationState state) {
    if (state is Uninitialized) {
      return LoadingIndicator();
    } else if (state is Authenticated) {
      return HomePage();
    } else if (state is Unauthenticated) {
      return LoginPage(authService: authService);
    } else if (state is Unregistered) {
      return RegisterScreen();
    } else if (state is OnBoard) {
      return HomePage();
    }
    return null;
  }
}
