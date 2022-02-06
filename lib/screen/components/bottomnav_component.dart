import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamatoappclone/providers/bottombar_provider.dart';
import 'package:zamatoappclone/screen/constant/lists/bottombar_list.dart';
import 'package:zamatoappclone/screen/constant/theme/color.dart';

class BottomNavigationComponent extends StatelessWidget {
  const BottomNavigationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBarItems>(
      builder: (context, bottombarItems, child) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 30), //30
        height: 80,
        decoration: const BoxDecoration(
          color: white,
        ),
        child: buildRow(bottombarItems, context),
      ),
    );
  }

  Row buildRow(BottomBarItems bottombarItems, BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          bottombarList.length,
          (index) => buildIconBottomBar(
            isActive: bottombarItems.selectedIndex == index ? true : false,
            icon: bottombarList[index].iconName,
            name: bottombarList[index].name,
            press: (){
              bottombarItems.changeBottomBarIndex(index: index);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> bottombarList[index].destination!));
            }
          ),
        ),
      );
  }

  Column buildIconBottomBar({String? icon, VoidCallback? press, bool isActive = false,
      String? name}) {
    return Column(
      children: [
        IconButton(
          onPressed: press!,
          icon: Image.asset(
            icon!,
            color: isActive ? red : darkGray2,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            name!,
            style: const TextStyle(color: darkGray2),
          ),
        )
      ],
    );
  }
}
