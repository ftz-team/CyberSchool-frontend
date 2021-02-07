import 'package:cyberschool/bloc/SplashControllerBloc.dart';
import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:cyberschool/ui/elements/Margins.dart';
import 'package:flutter/material.dart';
import 'package:cyberschool/constants.dart' as constants;

class firstSplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.defaultBackground,
      body: Container(
        width: displayWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              constants.firstSplashHeader,
              style: UIFonts.h1(context)
            ),
            placeHolderMargin(
                displayHeight(context) * 0.1,
                displayWidth(context),
                30,
                1000
            ),
            Image.asset("assets/images/splashScreens/first.png"),
            placeHolderMargin(
              displayHeight(context) * 0.1,
              displayWidth(context),
              25,
              1000
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: displayHeight(context),
                  maxWidth: 315
              ),
              child: Container(
                width: displayWidth(context)*0.85,
                child: Text(
                  constants.firstSplashText,
                  textAlign: TextAlign.center,
                  style: UIFonts.smallText(context,color: UIColors.thinFontColor )
                ),
              ),
            ),
            placeHolderMargin(
                displayHeight(context) * 0.1,
                displayWidth(context),
                30,
                1000
            ),
            GestureDetector(
              onTap: (){
                print("!!!!!!!");
                splashControllerBloc.mapEventToState(SplashControllerEvents.GO_TO_NEXT);
              },
              child: Container(
                width: displayWidth(context) * 0.45,
                padding: EdgeInsets.only(
                  top: displayHeight(context) * 0.015,
                  bottom: displayHeight(context) * 0.015,
                ),
                decoration: BoxDecoration(
                    color: UIColors.yellow,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text(
                  constants.firstSplashButtonText,
                  textAlign: TextAlign.center,
                  style: UIFonts.h2(context),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}