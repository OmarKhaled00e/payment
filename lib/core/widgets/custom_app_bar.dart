import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Icon(Icons.arrow_back_outlined, color: Colors.black),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
