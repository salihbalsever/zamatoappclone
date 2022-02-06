import 'package:flutter/material.dart';
import 'package:zamatoappclone/screen/components/home_appbar_component.dart';

class ProPage extends StatelessWidget {
  const ProPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40), child: AppBarComponent(),),
      body: Column(
        children: [
        ],
      ),
    );
  }
}