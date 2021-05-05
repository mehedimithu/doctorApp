import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../service/auth_service.dart';
import '../bloc/login_bloc.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  final AuthService authService;

  LoginPage({Key key, @required this.authService})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(authService: authService),
          child: LoginForm(),
        ),
      ),
    );
  }
}
