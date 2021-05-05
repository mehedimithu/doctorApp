import 'package:meta/meta.dart';

@immutable
class LoginState {
  final String emailError;
  final String passwordError;
  final bool isSubmitting;
  final String successMsg;
  final String failureMsg;
  final bool isShowPassword;
  final bool isKeepMeLoggedIn;

  bool get isFormValid => emailError.isEmpty && passwordError.isEmpty;

  LoginState({
    @required this.emailError,
    @required this.passwordError,
    @required this.isSubmitting,
    @required this.successMsg,
    @required this.failureMsg,
    @required this.isShowPassword,
    @required this.isKeepMeLoggedIn,
  });

  factory LoginState.init() {
    return LoginState(
      emailError: '',
      passwordError: '',
      isSubmitting: false,
      successMsg: '',
      failureMsg: '',
      isShowPassword: false,
      isKeepMeLoggedIn: false,
    );
  }

  factory LoginState.loading() {
    return LoginState(
      emailError: '',
      passwordError: '',
      isSubmitting: true,
      successMsg: '',
      failureMsg: '',
      isShowPassword: false,
      isKeepMeLoggedIn: false,
    );
  }

  factory LoginState.failure(String msg) {
    return LoginState(
      emailError: '',
      passwordError: '',
      isSubmitting: false,
      successMsg: '',
      failureMsg: msg,
      isShowPassword: false,
      isKeepMeLoggedIn: false,
    );
  }

  factory LoginState.success(String msg) {
    return LoginState(
      emailError: '',
      passwordError: '',
      isSubmitting: false,
      successMsg: msg,
      failureMsg: '',
      isShowPassword: false,
      isKeepMeLoggedIn: false,
    );
  }

  LoginState copyWith({
    String emailError,
    String passwordError,
    bool isSubmitting,
    String successMsg,
    String failureMsg,
    bool isShowPassword,
    bool isKeepMeLoggedIn,
  }) {
    return LoginState(
      emailError: emailError ?? this.emailError,
      passwordError: passwordError ?? this.passwordError,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      successMsg: successMsg ?? this.successMsg,
      failureMsg: failureMsg ?? this.failureMsg,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isKeepMeLoggedIn: isKeepMeLoggedIn ?? this.isKeepMeLoggedIn,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginState &&
          runtimeType == other.runtimeType &&
          emailError == other.emailError &&
          passwordError == other.passwordError &&
          isSubmitting == other.isSubmitting &&
          successMsg == other.successMsg &&
          failureMsg == other.failureMsg &&
          isShowPassword == other.isShowPassword &&
          isKeepMeLoggedIn == other.isKeepMeLoggedIn;

  @override
  int get hashCode =>
      emailError.hashCode ^
      passwordError.hashCode ^
      isSubmitting.hashCode ^
      successMsg.hashCode ^
      failureMsg.hashCode ^
      isShowPassword.hashCode ^
      isKeepMeLoggedIn.hashCode;

  @override
  String toString() {
    return 'LoginState{isEmailValid: $emailError, isPasswordValid: $passwordError, '
        'isSubmitting: $isSubmitting, isSuccess: $successMsg, isFailure: $failureMsg, '
        'isShowPassword: $isShowPassword, isKeepMeLoggedIn: $isKeepMeLoggedIn}';
  }
}
