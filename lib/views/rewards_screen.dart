import 'package:chatatan_app/views/chat_shoe_screen.dart';
import 'package:chatatan_app/views/faq_rewards_screen.dart';
import 'package:chatatan_app/widgets/bottom_nav_bar.dart';
import 'package:chatatan_app/widgets/chat_barber_content.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:chatatan_app/widgets/semua_rewards_content.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  List<String> rewardTexts = [
    "Semua",
    "Chat Barber",
    "Chat Shoe",
    "Rupaka",
    "CHTTN",
    "Chat Box"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Rewards',
        customIcon: Image.asset(
          "assets/images/faq.png",
          width: 20.09,
          height: 20.09,
        ),
        onCustomIconPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FaqRewardsScreen()));
        },
        onBackPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => BottomNavBar()),
            (Route<dynamic> route) => false,
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: rewardTexts.asMap().entries.map((entry) {
                  final index = entry.key;
                  final text = entry.value;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 39.0,
                      width: _calculateWidth(text),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.black),
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            IndexedStack(
              index: selectedIndex,
              children: [
                SemuaRewardsContent(),
                ChatBarberContent(),
                ChatShoeScreen()
              ],
            ),
          ],
        ),
      ),
    );
  }

  double _calculateWidth(String text) {
    final textStyle = TextStyle(
      fontFamily: 'Satoshi',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    );
    final textWidth = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();
    return textWidth.width + 32.0;
  }
}
