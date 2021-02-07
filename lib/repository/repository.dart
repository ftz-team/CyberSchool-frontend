import 'package:cyberschool/models/TestModel.dart';
import 'package:cyberschool/models/UserModel.dart';


class Repository{

  static registerUser(UserModel user){

  }

  static List<TestModel> getTests(UserModel user){

    //TODO call api
    return [
      TestModel.fromJson(
          {
            "id":3,
            "header":"Как не попасться на удочку мошенника?",
            "description":"Очень краткий дескрипшон данного теста",
            "reward":"15% скидка в Пятерочке за прохождение!",
            "imageUrl":"https://openclipart.org/image/2400px/svg_to_png/275692/1489798288.png",
          }
      ),
      TestModel.fromJson(
          {
            "id":3,
            "header":"Как не попасться на удочку мошенника?",
            "description":"Очень краткий дескрипшон данного теста",
            "reward":"15% скидка в Пятерочке за прохождение!",
            "imageUrl":"https://openclipart.org/image/2400px/svg_to_png/275692/1489798288.png",
          }
      )
    ];
  }

}