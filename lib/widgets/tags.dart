import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: RichText(
        text: const TextSpan(
          text: '#Rafipsv ',
          style:
              TextStyle(fontSize: 15, color: Color.fromARGB(255, 55, 159, 207)),
          children: <TextSpan>[
            TextSpan(
                text: '#InstaUI',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: ' #Flutter ',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: ' #Nodejs',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
