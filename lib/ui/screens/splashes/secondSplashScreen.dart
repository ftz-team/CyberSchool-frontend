import 'package:cyberschool/bloc/SplashControllerBloc.dart';
import 'package:cyberschool/helpers/dateHelpers.dart';
import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:cyberschool/ui/elements/Margins.dart';
import 'package:cyberschool/ui/screens/splashes/thirdSplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cyberschool/constants.dart' as constants;
import 'package:cyberschool/globals.dart' as globals;

class secondSplashScreen extends StatefulWidget{
  @override
secondSplashScreenState createState()=>secondSplashScreenState();
}

class secondSplashScreenState extends State<secondSplashScreen>{

  DateTime picked = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,

        initialDate: picked,
        firstDate: DateTime(1900),
        lastDate: DateTime(2022));
    if (pickedDate != null && pickedDate != picked)
      setState(() {
        picked = pickedDate;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  placeHolderMargin(
                      displayHeight(context) * 0.1,
                      displayWidth(context),
                      100,
                      1000
                  ),
                  Container(
                    child: Image.asset("assets/images/splashScreens/second.png"),
                  ),

                  placeHolderMargin(
                      displayHeight(context) * 0.007,
                      displayWidth(context),
                      15,
                      1000
                  ),
                  Text(
                      constants.secondSplashHeader,
                      style: UIFonts.h1(context)
                  ),
                  placeHolderMargin(
                      displayHeight(context) * 0.02,
                      displayWidth(context),
                      25,
                      1000
                  ),
                 GestureDetector(
                   child:  ConstrainedBox(
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
                             Container(
                               margin: EdgeInsets.only(
                                 left: displayWidth(context) * 0.05
                               ),
                               child: Text(

                                 dmyExt(picked),
                                 style: UIFonts.h2(context),

                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(
                                   right: displayWidth(context) * 0.05
                               ),

                               child: Icon(
                                   Icons.calendar_today
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
                   onTap: () => _selectDate(context),
                 ),
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
                          constants.secondSplashText,
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
                      globals.user.birthday = picked;
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>thirdSplashScreen()));
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
                        constants.secondSplashButtonText,
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
                      child: SvgPicture.asset(constants.imagesPath+"splashScreens/active.svg")
                    ),
                    Container(
                      child: SvgPicture.asset(constants.imagesPath+"splashScreens/not-active.svg"),
                    ),
                    Container(
                      child: SvgPicture.asset(constants.imagesPath+"splashScreens/not-active.svg"),
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
}