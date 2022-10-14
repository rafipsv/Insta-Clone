import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/posts.dart';
import 'package:insta_clone/widgets/bottombar.dart';
import 'package:insta_clone/widgets/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffD8D8D8,
      ),
      appBar: Helper.appBar,
      bottomNavigationBar: const ButtomTabs(),
      body: const Posts(),
    );
  }
}
