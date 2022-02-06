import 'package:zamatoappclone/screen/constant/icons/icons.dart';
import 'package:zamatoappclone/screen/models/bottomnav_model.dart';
import 'package:zamatoappclone/screen/pages/goout_page.dart';
import 'package:zamatoappclone/screen/pages/order_page.dart';

List<BottomBarModel> bottombarList = [
  BottomBarModel(
    id: 1,
    name: "Order",
    iconName: orderBottomBarIcon,
    destination:  const OrderPage(),
  ),
  BottomBarModel(
      id: 2,
      name: "Go out",
      iconName: goOutBottomBarIcon,
      destination: const GooutPages()),
  BottomBarModel(
    id: 3,
    name: "Pro",
    iconName: proBottomBarIcon,
  ),
  BottomBarModel(
    id: 4,
    name: "Grocery",
    iconName: groceryBottomBarIcon,
  ),
  BottomBarModel(
    id: 5,
    name: "Nutrition",
    iconName: nutritionBottomBarIcon,
  )
];