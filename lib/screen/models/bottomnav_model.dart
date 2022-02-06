import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/constant/icons/icons.dart';
import 'package:zamatoappclone/screen/pages/goout_page.dart';
import 'package:zamatoappclone/screen/pages/order_page.dart';

class BottomBarModel {
  final int? id;
  final String? iconName;
  final Widget? destination;
  final String? name;

    BottomBarModel({this.name, this.id, this.iconName, this.destination});


}
