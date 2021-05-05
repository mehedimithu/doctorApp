import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/utils/dialog_util.dart';
import 'package:pms_telemedicine_flutter/main/auth/bloc/auth_bloc.dart';
import 'package:pms_telemedicine_flutter/main/auth/bloc/auth_event.dart';
import 'package:pms_telemedicine_flutter/main/auth/forgetpassword/ui/forget_password_page.dart';
import 'package:pms_telemedicine_flutter/main/auth/login/bloc/bloc.dart';
import 'package:pms_telemedicine_flutter/main/auth/signup/signup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pms_telemedicine_flutter/main/home/ui/home_page.dart';

class LoginForm extends StatefulWidget {
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginBloc _loginBloc;
  bool hidePassword = true;
  String password;
  TextEditingController _emailController =
      TextEditingController(text: kReleaseMode ? '' : 'a@e.co');
  TextEditingController _passwordController =
      TextEditingController(text: kReleaseMode ? '' : 'pass');

  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          DialogUtils().snackBarProgress(context, 'Login..Please wait....');
        } else if (state.successMsg.isNotEmpty) {
          DialogUtils().snackBar(context, 'Login Success');
          BlocProvider.of<AuthenticationBloc>(context)..add(LoggedIn());
        } else if (state.failureMsg.isNotEmpty)
          DialogUtils()
              .snackBar(context, 'Login fail. Please try again later.');
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return _buildBody(context);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('assets/images/bottom_shape.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/icons/vector_0.png',
                            height: 103,
                            width: 103,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Let’s bring you to the online medical facality.",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff000000),
                              fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        hintText: "Phone/Email",
                        labelText: "Phone/Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xff00e1ff)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            hidePassword == true ? Icons.lock : Icons.lock_open,
                            color: Color(0xff00e1ff),
                          ),
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white60,
                        hintText: 'Password',
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xff00e1ff)),
                        ),
                      ),
                      onSaved: (value) => password = value,
                      obscureText: hidePassword,
                      // obscureText: true,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {
                        // _onFormSubmitted();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                      size: MediaQuery.of(context).size,
                                    )));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xff00e1ff)),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Sign in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()))
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have an Account?  ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              color: Color(0xff00e1ff)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _onFormSubmitted() {
    _loginBloc.add(
      LoginWithCredentialsPressed(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }
}
