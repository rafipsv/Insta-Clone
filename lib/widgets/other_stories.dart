import 'package:flutter/material.dart';

class OtherStories extends StatelessWidget {
  const OtherStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.all(6),
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 202, 29, 84),
            Color.fromARGB(255, 117, 35, 145),
          ],
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(
                "assets/images/rafi.jpeg",
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
