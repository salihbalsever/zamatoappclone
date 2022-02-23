import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamatoappclone/providers/bottombar_provider.dart';
import 'package:zamatoappclone/providers/slider_provider.dart';
import 'package:zamatoappclone/screen/components/slider_component.dart';
import 'package:zamatoappclone/screen/pages/order_page.dart';
import 'screen/models/bottomnav_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarItems()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const OrderPage(),
      ),
    );
  }
}
