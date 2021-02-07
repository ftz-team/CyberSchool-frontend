
import 'package:cyberschool/models/AbstractModel.dart';

class variantModel extends AbstractModel{

  String text;
  bool correct;
  String comment;

  variantModel.fromJson(Map<String,dynamic> json){
    text = json['text'];
    correct = json['correct'];
    comment = json['comment'];
  }

}