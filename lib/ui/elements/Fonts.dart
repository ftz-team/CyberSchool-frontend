import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:flutter/material.dart';

class UIFonts{
  static String font = 'Montserrat';

  //figma 24px
  static TextStyle h1(BuildContext context,{Color color = UIColors.fontColor,FontWeight weight =  FontWeight.w700}){
    return TextStyle(
        color : color,
        fontWeight: weight,
        fontFamily: font,
        fontSize: displayWidth(context) * 0.06
    );
  }

  //figma 18px
  static TextStyle h2(BuildContext context,{Color color = UIColors.fontColor,FontWeight weight =  FontWeight.w700}){
    return TextStyle(
        color : color,
        fontWeight: weight,
        fontFamily: font,
        fontSize: displayWidth(context) * 0.055
    );
  }

  //figma 13px
  static TextStyle smallText(BuildContext context,{Color color = UIColors.fontColor,FontWeight weight =  FontWeight.w600}){
    return TextStyle(
        color : color,
        fontWeight: weight,
        fontFamily: font,
        fontSize: displayWidth(context) * 0.04
    );
  }

}