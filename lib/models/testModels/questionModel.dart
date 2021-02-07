
import 'package:cyberschool/models/AbstractModel.dart';
import 'package:cyberschool/models/testModels/variantModel.dart';

class questionModel extends AbstractModel{

  List<variantModel> variants;
  String text;

  questionModel.fromJson(Map<String,dynamic> json){

    text = json['text'];
    variants = [];
    for (var variant in json['variants']){
      variants.add(variantModel.fromJson(variant));
    }

  }

}