import 'package:flutter/material.dart';

class TextClass{
  Text textClass({required String text,var textColor,required double fontSize,var fontWeight}){
    return Text(text,style: TextStyle(color: textColor,fontSize: fontSize,fontWeight: fontWeight),);
  }
}