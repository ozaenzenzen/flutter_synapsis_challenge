import 'package:flutter/material.dart';
import 'package:flutter_synapsis_challenge/app.dart';
import 'package:flutter_synapsis_challenge/init_config.dart';

void main() async {
  await InitConfig.init();
  runApp(const MyApp());
}