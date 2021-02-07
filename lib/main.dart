import 'file:///D:/AndroidStudioProjects/cyberschool/lib/ui/screens/splashes/firstSplashScreen.dart';
import 'package:cyberschool/ui/screens/screensController.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

bool kReleaseMode = false;

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: StartScreen(),
    );
  }
}

