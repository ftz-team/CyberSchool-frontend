import 'package:cyberschool/helpers/sizeHelpers.dart';
import 'package:cyberschool/ui/elements/Colors.dart';
import 'package:cyberschool/ui/elements/Fonts.dart';
import 'package:flutter/material.dart';

class genderBox extends StatelessWidget{

  Color backgroundColor;
  Color textColor;
  String text;

  genderBox(String text){
    this.backgroundColor = Colors.white;
    this.textColor = UIColors.fontColor;
    this.text = text;
  }

  genderBox.active(String text){
    this.backgroundColor = UIColors.blue;
    this.textColor = Colors.white;
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 90
      ),
      child: Container(
        height: displayHeight(context) * 0.08,
        margin: EdgeInsets.only(
          top: displayHeight(context) * 0.01,
          bottom: displayHeight(context) * 0.01,
          right: displayWidth(context) *0.013,
          left: displayWidth(context) *0.013,
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: UIFonts.font,
                  fontWeight: FontWeight.w600,
                  fontSize: displayWidth(context) * 0.035,
                  color: textColor
              )
          ),
        )
      ),
    );
  }
}