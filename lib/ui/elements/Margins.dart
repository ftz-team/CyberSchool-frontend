import 'package:flutter/material.dart';

class Margins{



}

class placeHolderMargin extends StatelessWidget{
  double _height;
  double _width;
  double _maxWidth;
  double _maxHeight;

  placeHolderMargin(
      double height ,
        double width ,
        double maxHeight ,
        double maxWidth ) {
    this._height = height;
    this._width = width;
    this._maxWidth = maxWidth;
    this._maxHeight = maxHeight;
  }

  @override
  Widget build(BuildContext context) {
    return
      ConstrainedBox(
        constraints: BoxConstraints(maxWidth: _maxWidth, maxHeight: _maxHeight),
        child: Container(
          height: _height,
          width: _width,
        ),
      );
  }
}