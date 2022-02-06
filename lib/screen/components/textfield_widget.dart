import 'package:flutter/material.dart';

class CustomText extends Text {

  CustomText({required String name, FontWeight? fontWeight, Color? color, double? fontSize})
      : super(name, style: _style(color, fontSize,fontWeight));
}

TextStyle _style(color, fontSize, fontWeight) {
  return TextStyle(
      color: color, fontSize: fontSize, fontWeight:fontWeight );
}

// class TextFieldWidget extends StatelessWidget {
//   final String name;
//   final double? fontSize;
//   final Color? color;
//
//   TextFieldWidget({this.color, required this.name, this.fontSize});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(name, style: _style);
//   }
// }
