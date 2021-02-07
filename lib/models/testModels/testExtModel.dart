
import 'package:cyberschool/models/AbstractModel.dart';
import 'package:cyberschool/models/testModels/questionModel.dart';

import '../TestModel.dart';

class testExtModel {

  int id;
  String header;
  String description;
  String reward;
  String imageUrl;
  List<questionModel> questions;

  testExtModel.fromJson(Map<String,dynamic> json){
    id = json['id'];
    header = json['header'];
    description = json['description'];
    reward = json['reward'];
    imageUrl = json['imageUrl'];
    for (var question in json['questions']){
      questions.add(questionModel.fromJson(question));
    }
  }


}