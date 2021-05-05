import 'package:flutter/material.dart';
import 'package:flutter_core/core/app.dart';
import 'package:flutter_core/core/env.dart';
import 'package:pms_telemedicine_flutter/api/base_url.dart';
import 'package:pms_telemedicine_flutter/route/app_routes.dart';

void main() => Staging(new App());


class Staging extends Env {
  final String appName = "PMS (S)";
  final String baseUrl = BaseUrl.baseStagingURL;
  final Color primarySwatch = Colors.teal;
  EnvType environmentType = EnvType.STAGING;

  Staging(App app):super(app){
    AppRoutes.configureRoutes(app.getRouter());
  }

}

