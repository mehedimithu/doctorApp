import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_core/logger/Log.dart';
import 'package:flutter_core/utils/validation.dart';
import 'package:pms_telemedicine_flutter/main/auth/login/model/dto/login_response_dto.dart';
import 'package:pms_telemedicine_flutter/main/auth/service/auth_service.dart';
import 'package:rxdart/rxdart.dart';
import 'bloc.dart';
import 'package:meta/meta.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthService _authService;

  LoginBloc({@required AuthService authService})
      : assert(authService != null),
        this._authService = authService,
        super(LoginState.init());


  @override
  Stream<Transition<LoginEvent, LoginState>> transformEvents(
    Stream<LoginEvent> events,
    TransitionFunction<LoginEvent, LoginState> transitionFn,
  ) {
    final nonDebounceStream = events.where((event) {
      return (event is! EmailChanged && event is! PasswordChanged);
    });
    final debounceStream = events.where((event) {
      return (event is EmailChanged || event is PasswordChanged);
    }).debounceTime(Duration(milliseconds: 300));
    return super.transformEvents(
      nonDebounceStream.mergeWith([debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is EmailChanged) {
      yield* _mapEmailChangedToState(event.email);
    } else if (event is PasswordChanged) {
      yield* _mapPasswordChangedToState(event.password);
    } else if (event is LoginWithGooglePressed) {
      yield* _mapLoginWithGooglePressedToState();
    } else if (event is LoginWithCredentialsPressed) {
      yield* _mapLoginWithCredentialsPressedToState(
        email: event.email,
        password: event.password,
      );
    } else if (event is ShowPasswordToggle) {
      yield* _mapShowPasswordToggleToState();
    } else if (event is KeepMeLoggedIn) {
      yield* _mapKeepMeLoggedInToState(event);
    }
  }

  Stream<LoginState> _mapKeepMeLoggedInToState(KeepMeLoggedIn event) async* {
    yield state.copyWith(isKeepMeLoggedIn: event.val);
  }

  Stream<LoginState> _mapShowPasswordToggleToState() async* {
    yield state.copyWith(isShowPassword: !state.isShowPassword);
  }

  Stream<LoginState> _mapEmailChangedToState(String email) async* {
    yield state.copyWith(
      emailError: Validation.getEmailValid(email),
    );
  }

  Stream<LoginState> _mapPasswordChangedToState(String password) async* {
    yield state.copyWith(
      passwordError: Validation.getPasswordValid(password),
    );
  }

  Stream<LoginState> _mapLoginWithGooglePressedToState() async* {
    try {
      yield LoginState.success('');
    } catch (e) {
      Log.e(e.toString());
      yield LoginState.failure('');
    }
  }

  Stream<LoginState> _mapLoginWithCredentialsPressedToState({
    String email,
    String password,
  }) async* {
    yield LoginState.loading();
    try {
      LoginResponseDto loginResponse = await _authService.doLogin(email, password);
      if (loginResponse != null && loginResponse.loggedUser!=null)
        yield LoginState.success('Login successful');
      else
        yield LoginState.failure('Login failed');
    } catch (e) {
      Log.e(e.toString());
      yield LoginState.failure(e.toString());
    }
  }
}
