import 'package:cyberschool/bloc/SplashControllerBloc.dart';
import 'package:cyberschool/ui/screens/splashes/firstSplashScreen.dart';
import 'package:cyberschool/ui/screens/splashes/fourthSplashScreen.dart';
import 'package:cyberschool/ui/screens/splashes/secondSplashScreen.dart';
import 'package:cyberschool/ui/screens/splashes/thirdSplashScreen.dart';
import 'package:flutter/material.dart';


class splashScreensController extends StatefulWidget{
  @override
  _splashScreensControllerState createState() => _splashScreensControllerState();
}

class _splashScreensControllerState extends State<splashScreensController>{
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: splashControllerBloc.subject.stream,
      initialData: splashControllerBloc.defaultState,
      builder:
      // ignore: missing_return
          (BuildContext context, AsyncSnapshot<int> snapshot) {
        switch (snapshot.data) {
          case 0:
            return firstSplashScreen();
            break;
          case 1:
            return secondSplashScreen();
            break;
          case 2:
            return thirdSplashScreen();
            break;
          case 3:
            return fourthSplashScreen();
            break;
        }
      },
    );
  }

}