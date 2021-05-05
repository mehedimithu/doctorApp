import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_core/pref/app_pref.dart';
import 'package:meta/meta.dart';
import 'package:flutter_core/pref/pref_key.dart';
import '../../../common/user/logged_user.dart';
import 'bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AppPreference _pref;

  AuthenticationBloc({@required AppPreference pref})
      : assert(pref != null),
        _pref = pref,
        super(Uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    } else if (event is LoggedIn) {
      yield* _mapLoggedInToState();
    } else if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    } else if (event is CreateAccount) {
      yield Unregistered();
    } else if (event is OnBoardingDone) {
      yield* _mapOnBoardingDoneToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {
      if (_pref.getBoolean(key: PrefKey.IS_LOGGED_IN, defaultValue: false) &&
          !_pref.getBoolean(key: PrefKey.IS_ON_BOARD_PENDING, defaultValue: true)) {
        yield Authenticated(LoggedUser());
      } else if (_pref.getBoolean(key: PrefKey.IS_LOGGED_IN, defaultValue: false) &&
          _pref.getBoolean(key: PrefKey.IS_ON_BOARD_PENDING, defaultValue: true)) {
        yield OnBoard();
      } else {
        yield Unauthenticated();
      }
    } catch (_) {
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState() async* {
    _pref.setBoolean(PrefKey.IS_LOGGED_IN, true);
    if (_pref.getBoolean(key: PrefKey.IS_LOGGED_IN, defaultValue: false) &&
        _pref.getBoolean(key: PrefKey.IS_ON_BOARD_PENDING, defaultValue: true)) {
      yield OnBoard();
    }else yield Authenticated(LoggedUser());
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    _pref.setBoolean(PrefKey.IS_LOGGED_IN, false);
    _pref.setBoolean(PrefKey.IS_ON_BOARD_PENDING, true);
    yield Unauthenticated();
  }

  Stream<AuthenticationState> _mapOnBoardingDoneToState() async* {
    _pref.setBoolean(PrefKey.IS_ON_BOARD_PENDING, false);
    yield Authenticated(LoggedUser());
  }
}
