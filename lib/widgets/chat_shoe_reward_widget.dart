import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatShoeRewardWidgets extends StatelessWidget {
  final String title;
  final int points;

  ChatShoeRewardWidgets({required this.title, required this.points});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Chat Shoe Reward',
          onBackPressed: () {
            Get.back();
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 325.0,
                      height: 166.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                              color: Color.fromRGBO(204, 204, 204, 1))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '$points Points',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'You are going to use a passage of Chat Shoe Treatment, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          'Randomised words which don\'t look even slightly good believable. If you are going to use a passage of what you need to be sure there isn\'t anything embarrassing hidden in the middle of text.',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ContinueButton(onPressed: () {}, text: "Redeem")
          ],
        ));
  }
}
