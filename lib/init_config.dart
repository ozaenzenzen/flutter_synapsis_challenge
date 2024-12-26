import 'package:fam_coding_supply/fam_coding_supply.dart';
import 'package:flutter/material.dart';

class InitConfig {
  static AppApiServiceCS appApiService = AppApiServiceCS("https://dev-api-fms.apps-madhani.com/v1");

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    AppLoggerCS.useLogger = true;
  }
}
