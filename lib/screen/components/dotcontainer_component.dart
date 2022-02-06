import 'package:flutter/material.dart';

class DotContainerComponent extends Container {
   DotContainerComponent({required Color? color});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
