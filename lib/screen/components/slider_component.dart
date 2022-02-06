import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamatoappclone/providers/slider_provider.dart';
import 'package:zamatoappclone/screen/components/textfield_widget.dart';
import 'package:zamatoappclone/screen/constant/lists/slider_list.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class SliderComponent extends StatelessWidget {
  final String? imageName;
  final String? title;
  final Color? color;

  SliderComponent({Key? key, this.imageName, this.title, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SliderProvider>(builder: (context, state, w) {
      //consumerler sarmalı olanların haberi oluyor
      return Stack(children: [buildCard(context), buildPositioned(state)]);
    });
  }

  Positioned buildPositioned(SliderProvider state) {
    return Positioned(
        left: 20,
        right: 0,
        bottom: 30,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(sliderList.length, (idx) {
              return state.activeIndex == idx
                  ? _activeDot
                  : _inActiveDot; //state providerin içine ulasıyor // burası card üzerinde noktları yerleştirdim
            })));
  }

  Card buildCard(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              color: color!, borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width,
          child: buildRow,
        ));
  }

  Row get buildRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CustomText(
              name: title!,
              color: white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            Text(title!),
            Text(title!)
          ],
        ),
        Image.asset(
          imageName!,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Padding get _activeDot {
    return buildDotContainer(color: white);
  }

  Padding get _inActiveDot {
    return buildDotContainer(color: darkGray2);
  }

  Padding buildDotContainer({Color? color}) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Container(
        height: 8,
        width: 8,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
