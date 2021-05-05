import 'package:flutter/material.dart';
import 'package:flutter_core/core/app.dart';
import 'package:flutter_core/core/env.dart';
import 'package:pms_telemedicine_flutter/api/base_url.dart';
import 'package:pms_telemedicine_flutter/route/app_routes.dart';

void main() => Production(new App());


class Production extends Env {
  final String appName = "PMS";
  final String baseUrl = BaseUrl.baseProductionURL;
  final Color primarySwatch = Colors.green;
  EnvType environmentType = EnvType.PRODUCTION;

  Production(App app) : super(app){
    AppRoutes.configureRoutes(app.getRouter());
  }

}

