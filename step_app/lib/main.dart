import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:step_app/src/ui/application.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  Forest.init(
    isDebugModeEnabled: true,
    isProfileModeEnabled: false,
    isReleaseModeEnabled: false,
  );
  runApp(const Application());
}
