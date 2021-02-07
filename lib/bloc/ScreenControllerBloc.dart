import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ScreenControllerStates { TUTORIAL, MAIN , LOADING}
enum ScreenControllerEvents { TUTORIAL, MAIN }

class ScreenControllerBloc {
  BehaviorSubject<ScreenControllerStates> _subject =   BehaviorSubject<ScreenControllerStates>();
  BehaviorSubject<ScreenControllerStates> get subject => _subject;
  ScreenControllerStates defaultState = ScreenControllerStates.LOADING;

  void checkTutorial() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool flag = (prefs.getBool('firstTime') ?? true);
    if (flag){
      defaultState = ScreenControllerStates.TUTORIAL;
    }else{
      defaultState = ScreenControllerStates.MAIN;
    }

    _subject.sink.add(defaultState);
  }

  void mapEventToState(ScreenControllerEvents event) {
    switch (event) {
      case ScreenControllerEvents.MAIN:

        _subject.sink.add(ScreenControllerStates.MAIN);
        break;
      case ScreenControllerEvents.TUTORIAL:
        _subject.sink.add(ScreenControllerStates.TUTORIAL);
        break;
    }
  }

  void dispose() {
    _subject?.close();
  }
}

final switchScreenBloc = ScreenControllerBloc();
