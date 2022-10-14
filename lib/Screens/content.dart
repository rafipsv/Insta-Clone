// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/actions.dart';
import 'package:insta_clone/widgets/captions.dart';
import 'package:insta_clone/widgets/identity.dart';
import 'package:insta_clone/widgets/likes.dart';
import 'package:insta_clone/widgets/tags.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Identity(),
        GestureDetector(
          onDoubleTap: (() {
            setState(() {
              isLove = !isLove;
            });
          }),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/rafi.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        UserAction(
          isLove: isLove,
        ),
        const Likes(),
        const Captions(),
        const Tags(),
        const SizedBox(height: 5,),
        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 194, 193, 193),
          height: 5,
        ),
      ],
    );
  }
}
