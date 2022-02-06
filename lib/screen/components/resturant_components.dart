import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/components/discount_component.dart';
import 'package:zamatoappclone/screen/components/prometed_component.dart';
import 'package:zamatoappclone/screen/components/saveIcon_component.dart';
import 'package:zamatoappclone/screen/components/textfield_widget.dart';
import 'package:zamatoappclone/screen/constant/icons/icons.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class ResturantComponent extends StatelessWidget {
  final String? imageName;
  final String? deliveryTime;
  final String? discountAmount;
  final bool? prometed;
  final String? eatTitle;
  final String? city;
  final String? price;
  final String? description;
  final String? scoring;

  ResturantComponent(
      {Key? key,
      this.deliveryTime,
      this.discountAmount,
      this.prometed,
      this.eatTitle,
      this.city,
      this.price,
      this.description,
      this.imageName,
      this.scoring})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          buildStackImage(context),
          SizedBox(height: 10),
          row1,
          row2,
          Divider(),
          row3,
          SizedBox(height: 10,)
        ],
      ),
    );
  }

  Row get row3 {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(blueGreenIcon),
            Text(description!),
            Image.asset(purpleIcon)
          ],
        );
  }

  Row get row2 {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(city!), Text(price!)],
        );
  }

  Row get row1 {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              name: eatTitle!,
              color: black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            _starComponent
          ],
        );
  }

  Stack buildStackImage(BuildContext context) {
    return Stack(children: [
          buildStackContainer(context),
          positionedPrometed,
          positionedSave,
          positionedDiscount,
          positionedDeleveryTime
        ]);
  }

  Positioned get positionedDeleveryTime => Positioned(bottom: 8, right: 10, child: _deleveryTime);

  Positioned get positionedDiscount {
    return Positioned(
            bottom: 8,
            left: 8,
            child: DiscountComponent(
              discountAmount: "70",
            ));
  }

  Positioned get positionedPrometed => buildPositionedPrometed;

  Positioned get positionedSave => Positioned(top: 12, right: 10, child: SaveIconComponent());

  Positioned get buildPositionedPrometed {
    return Positioned(
            top: 12,
            left: 10,
            child: prometed == true ? PromotedComponent() : Container());
  }

  Container buildStackContainer(BuildContext context) {
    return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 4.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
            image: DecorationImage(
                image: AssetImage(imageName!), fit: BoxFit.fill),
          ),
        );
  }

// Positioned get posineted(int top, int left i+){
//   return
// }

  Container get _deleveryTime {
    return Container(
      height: 25,
      width: 75,
      decoration: boxDecoration(white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Image.asset(orderTimeIcon), Text(deliveryTime!)],
      ),
    );
  }


  Container get _starComponent {
    return Container(
      height: 25,
      width: 45,
      decoration: boxDecoration(greenBackgrounStar),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [CustomText(name:scoring!,color: white,),Image.asset(starIcon), ],
      ),
    );
  }

  BoxDecoration boxDecoration(Color? color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
    );
  }
}
