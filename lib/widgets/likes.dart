import 'package:flutter/material.dart';

class Likes extends StatelessWidget {
  const Likes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: RichText(
        text: const TextSpan(
          text: 'Liked By ',
          style: TextStyle(fontSize: 15, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: 'Rafipsv',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' and '),
            TextSpan(
                text: ' 720 Others',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
