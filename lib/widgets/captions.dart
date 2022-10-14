import 'package:flutter/material.dart';

class Captions extends StatelessWidget {
  const Captions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: RichText(
        text: const TextSpan(
          text: 'Hola Amigos! ',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
              text: 'This is my Instagram UI in Flutter ❤️ ', style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
