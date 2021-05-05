import 'package:flutter_core/pref/app_pref.dart';

abstract class BaseLocalDataSource {
  AppPreference _appPreference;

  BaseLocalDataSource(this._appPreference);

  AppPreference getAppPreference() {
    return _appPreference;
  }
}
