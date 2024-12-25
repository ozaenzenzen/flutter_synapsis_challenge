import 'package:flutter/material.dart';

class InitConfig {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}