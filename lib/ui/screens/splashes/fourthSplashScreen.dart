import 'package:cyberschool/bloc/ScreenControllerBloc.dart';
import 'package:cyberschool/helpers/dateHelpers.dart';
import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/models/UserModel.dart';
import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:cyberschool/ui/elements/Margins.dart';
import 'package:cyberschool/ui/screens/splashes/fourthSplashScreen.dart';
import 'package:cyberschool/ui/widgets/splashScreensWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cyberschool/constants.dart' as constants;
import 'package:cyberschool/globals.dart' as globals;

class fourthSplashScreen extends StatefulWidget{
  @override
  fourthSplashScreenState createState()=> fourthSplashScreenState();

}

class fourthSplashScreenState extends State<fourthSplashScreen>{

  final cityController = TextEditingController();
  String city = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: displayWidth(context),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  placeHolderMargin(displayHeight(context) * 0.1,
                      displayWidth(context), 100, 1000),
                  Container(
                    child: Image.asset("assets/images/splashScreens/fourth.png"),
                  ),
                  placeHolderMargin(displayHeight(context) * 0.007,
                      displayWidth(context), 15, 1000),
                  Text(constants.fourthSplashHeader, style: UIFonts.h1(context)),
                  placeHolderMargin(displayHeight(context) * 0.02,
                      displayWidth(context), 25, 1000),
                  GestureDetector(
                    child: ConstrainedBox(
                      child: Container(
                        width: displayWidth(context) * 0.9,
                        height: displayHeight(context) * 0.07,
                        decoration: BoxDecoration(
                            color: Color(0xffC4C4C4).withOpacity(0.19),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Flexible(
                            child:                               Container(
                              margin: EdgeInsets.only(
                                  left: displayWidth(context) * 0.05
                              ),
                              child: TextField(
                                controller: cityController,
                                style:UIFonts.h2(context),
                                decoration: null,
                              ),
                            ),
                          ),

                              Container(
                                margin: EdgeInsets.only(
                                    right: displayWidth(context) * 0.05
                                ),

                                child: Icon(
                                    Icons.search
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      constraints: BoxConstraints(
                          maxWidth: 300,
                          maxHeight: 50
                      ),
                    ),
                  ),
                  placeHolderMargin(displayHeight(context) * 0.1,
                      displayWidth(context), 25, 1000),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: displayHeight(context), maxWidth: 315),
                    child: Container(
                      width: displayWidth(context) * 0.85,
                      child: Text(constants.fourthSplashText,
                          textAlign: TextAlign.center,
                          style: UIFonts.smallText(context,
                              color: UIColors.thinFontColor)),
                    ),
                  ),
                  placeHolderMargin(displayHeight(context) * 0.1,
                      displayWidth(context), 30, 1000),
                  GestureDetector(
                    onTap: () {
                      globals.user.city = cityController.text;
                      switchScreenBloc.mapEventToState(ScreenControllerEvents.MAIN);
                    },
                    child: Container(
                      width: displayWidth(context) * 0.45,
                      padding: EdgeInsets.only(
                        top: displayHeight(context) * 0.015,
                        bottom: displayHeight(context) * 0.015,
                      ),
                      decoration: BoxDecoration(
                          color: UIColors.yellow,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        constants.fourthSplashButtonText,
                        textAlign: TextAlign.center,
                        style: UIFonts.h2(context),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: displayWidth(context) * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: SvgPicture.asset(
                            constants.imagesPath + "splashScreens/active.svg")),
                    Container(
                      child: SvgPicture.asset(
                          constants.imagesPath + "splashScreens/active.svg"),
                    ),
                    Container(
                      child: SvgPicture.asset(
                          constants.imagesPath + "splashScreens/active.svg"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  @override
  void dispose(){
    cityController.dispose();
    super.dispose();
  }

}