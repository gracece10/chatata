import 'package:flutter/material.dart';

class FaqRewardsWidgets extends StatelessWidget {
  final String question;
  final String answer;

  const FaqRewardsWidgets({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          answer,
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
