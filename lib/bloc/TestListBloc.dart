import 'package:cyberschool/models/TestModel.dart';
import 'package:cyberschool/repository/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cyberschool/globals.dart' as globals;

class TestListBloc {

  List<TestModel> tests;

  BehaviorSubject<List<TestModel>> _data = BehaviorSubject<List<TestModel>>();
  BehaviorSubject<List<TestModel>> get data => _data;

  void getTests(){
    tests = Repository.getTests(globals.user);
    _data.sink.add(tests);
    return;
  }


  void dispose() {
    _data?.close();
  }

}

TestListBloc testListBloc = TestListBloc();