import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/content.dart';
import 'package:insta_clone/Screens/stories.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return index == 0 ? const Stories() : const Content();
      }),
      itemCount: 5,
    );
  }
}
