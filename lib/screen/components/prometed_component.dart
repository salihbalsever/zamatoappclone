import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/components/textfield_widget.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class PromotedComponent extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      child: buildText(),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: white),
    );
  }

  Center buildText() {
    return Center(
      child: CustomText(
        name: "Prometed",
        fontSize: 10,
        color: black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
