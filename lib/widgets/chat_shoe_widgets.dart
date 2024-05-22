import 'package:chatatan_app/widgets/chat_shoe_reward_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatShoeWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;
  final int points;

  const ChatShoeWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.points,
  }) : super(key: key);

  @override
  State<ChatShoeWidget> createState() => _ChatShoeWidgetState();
}

class _ChatShoeWidgetState extends State<ChatShoeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Container(
            width: 325.0,
            height: 122.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color.fromRGBO(204, 204, 204, 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      widget.imagePath,
                      width: 90.0,
                      height: 90.0,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          widget.description,
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Text(
                              widget.points.toString(),
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              " Poin",
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChatShoeRewardWidgets(
                                        title: widget.title,
                                        points: widget.points)));
                              },
                              borderRadius: BorderRadius.circular(10.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Color.fromRGBO(156, 156, 156, 1),
                                  ),
                                ),
                                child: Container(
                                  width: 63.0,
                                  height: 24.0,
                                  child: Center(
                                    child: Text(
                                      "Redeem",
                                      style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
