
import 'package:flutter/material.dart';
import 'package:ui_homework_uet/constants/text_style_constants.dart';

class RoundImageText extends StatelessWidget {
  const RoundImageText({super.key, required this.image, required this.text});
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              image
            ),
          ),
          Text(
            text,
            style: heading5,
          ),
        ],
      ),
    );
  }
}
