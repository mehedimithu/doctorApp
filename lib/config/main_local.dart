
import 'package:flutter/material.dart';
import 'package:flutter_core/core/app.dart';
import 'package:flutter_core/core/env.dart';
import '../api/base_url.dart';
import '../route/app_routes.dart';

void main() => Development(new App());

class Development extends Env {
  final String appName = "PMS (L)";
  final String baseUrl = BaseUrl.baseLocalURL;
  final Color primarySwatch = Colors.blueAccent;
  EnvType environmentType = EnvType.DEVELOPMENT;

  Development(App app) : super(app) {
    AppRoutes.configureRoutes(app.getRouter());
  }
}
