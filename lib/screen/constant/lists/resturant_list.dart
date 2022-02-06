import 'package:zamatoappclone/screen/components/resturant_components.dart';
import 'package:zamatoappclone/screen/constant/images/images.dart';

List<ResturantComponent> get restuarantList {
  return [
    ResturantComponent(
      imageName: restorantImages1,
      city: "Biryani, Desserts",
      deliveryTime: "35 min",
      description: "Zomato  funds environmental projects \n to ofset delivery carbon footprint",
      discountAmount: "60% OFF",
      eatTitle: "Itminaan Biryani - Dıum Pukht",
      price: "Price Range ₹250-₹550",
      prometed: true,
      scoring: "4.1",
    ),
    ResturantComponent(
      imageName: restorantImages12,
      city: "North Indian, Mughiai",
      deliveryTime: "43 min",
      description: "Zomato  funds environmental projects \n to ofset delivery carbon footprint",
      discountAmount: "75% OFF",
      eatTitle: "Prem Dhaba",
      price: "Price Range ₹150 for one",
      prometed: false,
      scoring: "4.1",

    ),
  ];
}
