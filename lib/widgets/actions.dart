// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserAction extends StatefulWidget {
  bool isLove;
  UserAction({super.key, required this.isLove});

  @override
  State<UserAction> createState() => _UserActionState();
}

class _UserActionState extends State<UserAction> {
  bool isBookMark = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.isLove = !widget.isLove;
                  });
                },
                icon: Icon(
                  widget.isLove
                      ? FontAwesomeIcons.heartCircleCheck
                      : FontAwesomeIcons.heart,
                  color: widget.isLove
                      ? const Color.fromARGB(255, 189, 22, 10)
                      : Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.paperPlane,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: (() {
              setState(() {
                isBookMark = !isBookMark;
              });
            }),
            icon: Icon(
              isBookMark ? Icons.bookmark : Icons.bookmark_add_outlined,
              size: 30,
              color: isBookMark
                  ? Colors.black
                  : const Color.fromARGB(192, 68, 67, 67),
            ),
          ),
        ],
      ),
    );
  }
}
