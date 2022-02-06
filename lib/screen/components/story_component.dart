import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/components/textfield_widget.dart';

class StoryComponent extends StatelessWidget {
  final String? imageName;
  final String? imageTitle;


  StoryComponent({this.imageName, this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 15),
      child: buildColumn,
    );
  }

  Column get buildColumn {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: buildBoxDecoration,
        ),
        CustomText(
          name: imageTitle!,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        )
      ],
    );
  }

  BoxDecoration get buildBoxDecoration {
    return BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: AssetImage(imageName!), fit: BoxFit.cover),
    );
  }
}
