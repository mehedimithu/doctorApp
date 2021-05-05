import 'package:flutter_core/api/api_client.dart';
import 'package:flutter_core/pref/app_pref.dart';

abstract class BaseService{
  ApiClient _apiClient;
  AppPreference _appPreference;

  BaseService(this._apiClient, this._appPreference);

  ApiClient getApiClient() {
    return _apiClient;
  }

  AppPreference getAppPreference() {
    return _appPreference;
  }
}