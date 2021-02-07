import 'package:rxdart/rxdart.dart';

import 'ScreenControllerBloc.dart';

enum SplashControllerEvents {GO_TO_NEXT,END}

class SplashControllerBloc {

  int screen = 0;

  BehaviorSubject<int> _subject =   BehaviorSubject<int>();
  BehaviorSubject<int> get subject => _subject;
  int defaultState = 0;

  void mapEventToState(SplashControllerEvents event) {
    switch (event) {
      case SplashControllerEvents.GO_TO_NEXT:
        screen++;
        _subject.sink.add(screen);
        break;
      case SplashControllerEvents.END:
        _subject?.close();
        //todo save in storage
        switchScreenBloc.mapEventToState(ScreenControllerEvents.MAIN);
        break;
    }
  }

  void dispose() {
    _subject?.close();
  }
}

final splashControllerBloc = SplashControllerBloc();
