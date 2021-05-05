import 'package:flutter/material.dart';
import 'package:flutter_core/core/app.dart';
import 'package:flutter_core/core/env.dart';

import '../api/base_url.dart';
import '../route/app_routes.dart';

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

