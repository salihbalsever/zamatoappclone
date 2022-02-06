import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/constant/icons/icons.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class SaveIconComponent extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: buildBoxDecoration,
    );
  }

  BoxDecoration get buildBoxDecoration {
    return const BoxDecoration(
        color: white,
        shape: BoxShape.circle,
        image:  DecorationImage(
          image: AssetImage(saveIcon),
          fit: BoxFit.scaleDown,
        ));
  }
}
