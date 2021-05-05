import 'package:flutter_core/api/api_client.dart';
import 'package:flutter_core/pref/app_pref.dart';

import 'base_local_data_source.dart';

abstract class BaseRemoteDataSource extends BaseLocalDataSource {
  AppPreference _appPreference;
  ApiClient _apiClient;

  BaseRemoteDataSource(this._apiClient, this._appPreference)
      : super(_appPreference);

  AppPreference getAppPreference() {
    return _appPreference;
  }

  ApiClient getApiClient() {
    return _apiClient;
  }
}
