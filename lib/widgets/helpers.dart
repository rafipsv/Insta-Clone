import 'package:flutter/material.dart';

class Helper {
  static var appBar = AppBar(
    elevation: 0.5,
    centerTitle: true,
    backgroundColor: const Color(
      0xffD8D8D8,
    ),
    leading: const Icon(
      Icons.camera_alt_outlined,
      color: Colors.black,
      size: 30,
    ),
    title: Image.asset(
      "assets/images/insta_logo.png",
      height: 42,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(
          right: 12,
        ),
        child: Icon(
          Icons.send_outlined,
          color: Colors.black,
        ),
      ),
    ],
  );
}


