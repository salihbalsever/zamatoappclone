import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/components/textfield_widget.dart';
import 'package:zamatoappclone/screen/constant/icons/icons.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class DiscountComponent extends Container {
  final String? discountAmount;
   DiscountComponent({this. discountAmount});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      height: 25,
      width: 80,
      child: buildRow,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(5), color: darkBlue),
    );
  }

  Row get buildRow {
    return Row(
      children: [
        Image.asset(discountIcon),
        CustomText(
          name: '  ${discountAmount!}  % OFF',
          fontSize: 12,
          color: white,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
