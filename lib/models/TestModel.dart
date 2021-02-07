import 'package:cyberschool/models/AbstractModel.dart';

class TestModel extends AbstractModel{

  int id;
  String header;
  String description;
  String reward;
  String imageUrl;

  TestModel.fromJson(Map<String,dynamic> json){
    id = json['id'];
    header = json['header'];
    description = json['description'];
    reward = json['reward'];
    imageUrl = json['imageUrl'];
  }



}