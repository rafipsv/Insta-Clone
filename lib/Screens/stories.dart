// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/other_stories.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 15,
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Stories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 25,
                    ),
                    Text(
                      "Watch All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          const OtherStories(),
                          index == 0
                              ? const Positioned(
                                  right: 10.0,
                                  bottom: 5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blueAccent,
                                    radius: 10.0,
                                    child: Icon(
                                      Icons.add,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                      const Text(
                        "Rafipsv",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      )
                    ],
                  );
                }),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 194, 193, 193),
            height: 5,
          ),
        ],
      ),
    );
  }
}
