import 'package:flutter/material.dart';
import 'app/app_class.dart';
import 'core/services/services_locator.dart';

void main() {
  // Initialize Service Locator
  ServiceLocator.init();
  runApp(const MyApp());
}
