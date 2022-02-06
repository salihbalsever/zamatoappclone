import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/constant/images/images.dart';
import '../constant/icons/icons.dart';
import '../constant/theme/color.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: white,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconButton,
            _titleAppbar,
            const Spacer(),
            _searchIcon,
            _userProfile
          ],
        ),
      ),
    );
  }

  IconButton get _searchIcon {
    return IconButton(onPressed: () {}, icon: Image.asset(searchIcon));
  }

  Container get _iconButton {
    return buildIcon(
        assetsName: locationIcon, color: red, boxfit: BoxFit.scaleDown);
  }

  Container get _userProfile {
    return buildIcon(
        boxfit: BoxFit.cover, assetsName: userAppbarImages, color: white);
  }

  Padding get _titleAppbar {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Home",
                style: TextStyle(color: black),
              ),
              Image.asset(arrowDownAppbarIcon)
            ],
          ),
          const Text(
            "Karol Bagh,New Delhi",
            style: TextStyle(color: black),
          ),
        ],
      ),
    );
  }

  Container buildIcon({Color? color, String? assetsName, BoxFit? boxfit}) {
    return Container(
      width: 50,
      height: 50,
      decoration: boxDecoration(color, assetsName, boxfit),
    );
  }

  BoxDecoration boxDecoration(
      Color? color, String? assetsName, BoxFit? boxfit) {
    return BoxDecoration(
        color: color!,
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(assetsName!), fit: boxfit));
  }
}
