import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class CustomIconButton extends IconButton {
  CustomIconButton(String iconImage, double iconSize)
      : super(
            iconSize: iconSize,
            onPressed: () {},
            icon: Image.asset(iconImage),
            color: black);
}
