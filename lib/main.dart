import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamatoappclone/providers/bottombar_provider.dart';
import 'package:zamatoappclone/providers/slider_provider.dart';
import 'package:zamatoappclone/screen/components/slider_component.dart';
import 'package:zamatoappclone/screen/pages/order_page.dart';
import 'screen/models/bottomnav_model.dart';

// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (context) => BottomBarItems(),
//     child: const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OrderPage(),
//     ),
//   ));
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarItems()),

        // ListenableProvider<SliderProvider>(create: (context)=>SliderProvider()),
        // Provider<BottomBarItems>(create: (_) => BottomBarItems()),
        // Provider<SliderProvider>(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),

        //Provider<SliderComponent>(create: (_) => SliderComponent()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // backgroundColor: Colors.white,
            // We apply this to our appBarTheme because most of our appBar have this style
            // appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
            // visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
        home:  const OrderPage(),
      ),
    );
  }
}
