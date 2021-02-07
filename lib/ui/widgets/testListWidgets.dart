import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/models/TestModel.dart';
import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class offerCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: displayWidth(context) * 0.05,
        left: displayWidth(context) * 0.05,
      ),
      height: displayHeight(context)*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ]
      ),
      child: Row(

        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(
                left: displayWidth(context) * 0.04
              ),
              child: Image.asset("assets/images/present.png"),
            ),
          ),
          Expanded(
            flex: 7,
            child: Text(

              "Использовать скидку",
              textAlign: TextAlign.center,
              style: UIFonts.h2(context),
            ),
          ),
        ],
      ),
    );
  }
}

class TestCard extends StatelessWidget{

  TestModel test;
  TestCard(this.test);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context)*0.9,
      margin: EdgeInsets.only(
          top: displayHeight(context) * 0.03,
          left: displayWidth(context) * 0.05,
          right: displayWidth(context) * 0.05
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), //
            ),
          ],
          borderRadius: BorderRadius.circular(25)
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: displayHeight(context) * 0.01
                ),
              child: Text(
                test.reward,
                style: UIFonts.cardText(context,color: UIColors.pink,weight: FontWeight.w700),
                textAlign: TextAlign.left,
              )
            ),
            Container(
              margin: EdgeInsets.only(
                top: displayHeight(context) * 0.01
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Text(
                        test.header,
                        style: UIFonts.h2(context),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      "assets/images/cc.png",
                      height: displayHeight(context)*0.07,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: displayHeight(context) * 0.01
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            test.description,
                            style: UIFonts.smallText(context,color: UIColors.thinFontColor,weight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: displayHeight(context) * 0.01
                          ),
                          width: displayWidth(context)* 0.35,
                          padding: EdgeInsets.only(
                            top: displayHeight(context) * 0.01,
                            bottom: displayHeight(context) * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: UIColors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text(
                            "Подробнее",
                            textAlign: TextAlign.center,
                            style: UIFonts.smallText(context,color: Colors.white,weight: FontWeight.w700),
                          )
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.network(
                        test.imageUrl,

                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}