import 'package:cyberschool/bloc/ScreenControllerBloc.dart';
import 'package:cyberschool/ui/screens/splashes/firstSplashScreen.dart';
import 'file:///D:/AndroidStudioProjects/cyberschool/lib/ui/screens/mainScreen.dart';
import 'package:cyberschool/ui/screens/splashes/splashScreensController.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    switchScreenBloc.checkTutorial();
    return StreamBuilder(
      stream: switchScreenBloc.subject.stream,
      initialData: switchScreenBloc.defaultState,
      builder:
      // ignore: missing_return
          (BuildContext context, AsyncSnapshot<ScreenControllerStates> snapshot) {
        switch (snapshot.data) {

          case ScreenControllerStates.MAIN:
            return mainScreen();
            break;
          case ScreenControllerStates.TUTORIAL:
            return firstSplashScreen();
            break;
          case ScreenControllerStates.LOADING:
            return CircularProgressIndicator();
            break;
        }
      },
    );
  }
}