import 'package:flutter/material.dart';

class Identity extends StatelessWidget {
  const Identity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/rafi.jpeg',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rafipsv",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Chittagong, Bangladesh",
                    style: TextStyle(color: Color.fromARGB(192, 107, 106, 106)),
                  ),
                ],
              )
            ],
          ),
          const Icon(
            Icons.more_horiz,
            size: 30,
            color: Color.fromARGB(192, 68, 67, 67),
          )
        ],
      ),
    );
  }
}
