
import 'package:dio/dio.dart';
import 'package:flutter_core/api/api_client.dart';
import 'package:flutter_core/pref/app_pref.dart';
import 'package:flutter_core/pref/pref_key.dart';
import 'package:pms_telemedicine_flutter/api/all_urls.dart';
import 'package:pms_telemedicine_flutter/common/service/base_service.dart';
import 'package:pms_telemedicine_flutter/main/auth/login/model/dto/login_response_dto.dart';
import 'package:pms_telemedicine_flutter/pref/app_pref_key.dart';

class AuthService extends BaseService {
  AuthService({ApiClient apiClient, AppPreference appPreference})
      : super(apiClient, appPreference);

  Future<LoginResponseDto> doLogin(String email, String password) async {
    Response loginResponse = await getApiClient()
        .postFutureResponse(AllUrls.postLoginUrl(email, password));
    if (loginResponse?.data != null) {
      LoginResponseDto loginResponseDto = LoginResponseDto.fromJson(loginResponse.data);
      getAppPreference().setBoolean(PrefKey.IS_LOGGED_IN, true);
      getAppPreference().setString(AppsPrefKey.KEY_LOGGER_USER_DTO, loginResponseDto.toJson().toString());
      return loginResponseDto;
    }

    return null;
  }
}
