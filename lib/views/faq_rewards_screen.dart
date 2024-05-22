import 'package:chatatan_app/widgets/bottom_nav_bar.dart';
import 'package:chatatan_app/widgets/faq_rewards_widgets.dart';
import 'package:flutter/material.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';

class FaqRewardsScreen extends StatelessWidget {
  const FaqRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'FAQ Rewards',
        onBackPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => BottomNavBar()),
            (Route<dynamic> route) => false,
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FaqRewardsWidgets(
              question:
                  "Berapa banyak poin yang saya dapatkan setiap transaksi?",
              answer:
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
            ),
            SizedBox(height: 20),
            FaqRewardsWidgets(
              question: "Bagaimana cara saya menambah poin?",
              answer:
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. ",
            ),
            SizedBox(height: 20),
            FaqRewardsWidgets(
              question: "Bagaimana cara meredeem poin?",
              answer:
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. ",
            ),
          ],
        ),
      ),
    );
  }
}
