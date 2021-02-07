import 'package:cyberschool/bloc/TestListBloc.dart';
import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/models/TestModel.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:cyberschool/ui/widgets/testListWidgets.dart';
import 'package:flutter/material.dart';

class TestsScreen extends StatefulWidget{
  TestsScreenState createState()=>TestsScreenState();
}

class TestsScreenState extends State<TestsScreen>{
  @override
  Widget build(BuildContext context) {
    testListBloc.getTests();
    return StreamBuilder(
      stream: testListBloc.data.stream,
      initialData: null,
      builder:

          (BuildContext context, AsyncSnapshot<List<TestModel>>  snapshot) {
            if(snapshot.data == null){
              return CircularProgressIndicator();
            }
            else{
              return ListView(
                children: [
                  offerCard(),
                  Container(
                    margin: EdgeInsets.only(
                        top: displayHeight(context) * 0.043,
                        left: displayWidth(context) * 0.05,
                        right: displayWidth(context) * 0.05
                    ),
                    child: Text(
                      "Пройти опрос",
                      style: UIFonts.h1(context),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: displayHeight(context) * 0.01,
                        left: displayWidth(context) * 0.05,
                        right: displayWidth(context) * 0.05
                    ),
                    child: Text(
                      "Проходите тесты сосите письки наших партнеров.",
                      style: UIFonts.smallText(context),
                    ),
                  ),
                  for (TestModel test in snapshot.data) TestCard(test),
                  Container(
                    width: 100,
                    height: 30,
                  )
                ],
              );
            }
      },
    );


  }
}