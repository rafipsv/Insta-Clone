// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomTabs extends StatefulWidget {
  const ButtomTabs({super.key});

  @override
  State<ButtomTabs> createState() => _ButtomTabsState();
}

class _ButtomTabsState extends State<ButtomTabs> {
  bool isHome = true;
  bool isSearch = false;
  bool isAdd = false;
  bool isHeart = false;
  bool isPerson = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          splashColor: Colors.grey,
          onPressed: () {
            setState(() {
              isHome = true;
              isSearch = false;
              isAdd = false;
              isHeart = false;
              isPerson = false;
            });
          },
          icon: Icon(
            FontAwesomeIcons.home,
            color: isHome
                ? Colors.black
                : const Color.fromARGB(255, 139, 138, 138),
          ),
        ),
        IconButton(
          splashColor: Colors.grey,
          onPressed: () {
            setState(() {
              isHome = false;
              isSearch = true;
              isAdd = false;
              isHeart = false;
              isPerson = false;
            });
          },
          icon: Icon(
            FontAwesomeIcons.search,
            color: isSearch
                ? Colors.black
                : const Color.fromARGB(255, 116, 115, 115),
          ),
        ),
        IconButton(
          splashColor: Colors.grey,
          onPressed: () {
            setState(() {
              isHome = false;
              isSearch = false;
              isAdd = true;
              isHeart = false;
              isPerson = false;
            });
          },
          icon: Icon(
            Icons.add_box,
            size: 30,
            color:
                isAdd ? Colors.black : const Color.fromARGB(255, 139, 138, 138),
          ),
        ),
        IconButton(
            splashColor: Colors.grey,
            onPressed: () {
              setState(() {
                isHome = false;
                isSearch = false;
                isAdd = false;
                isHeart = true;
                isPerson = false;
              });
            },
            icon: isHeart
                ? Icon(
                    FontAwesomeIcons.heartPulse,
                    color: isHeart
                        ? Colors.black
                        : const Color.fromARGB(255, 116, 115, 115),
                  )
                : Icon(
                    FontAwesomeIcons.heart,
                    color: isHeart
                        ? Colors.black
                        : const Color.fromARGB(255, 116, 115, 115),
                  )),
        IconButton(
          splashColor: Colors.grey,
          onPressed: () {
            setState(() {
              isHome = false;
              isSearch = false;
              isAdd = false;
              isHeart = false;
              isPerson = true;
            });
          },
          icon: Icon(
            Icons.person,
            size: 30,
            color: isPerson
                ? Colors.black
                : const Color.fromARGB(255, 116, 115, 115),
          ),
        ),
      ],
    );
  }
}
