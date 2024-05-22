import 'package:chatatan_app/widgets/chat_shoe_widgets.dart';
import 'package:flutter/material.dart';

class ChatShoeScreen extends StatelessWidget {
  const ChatShoeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatShoeWidget(
          imagePath: 'assets/promo_images/shoe.jpg',
          title: 'Free 1 Pair Cuci Sepatu',
          description:
              'Gratis cuci 1 pasang sepatu untuk kamu member Chatatan Group',
          points: 250,
        ),
        SizedBox(height: 20),
        ChatShoeWidget(
          imagePath: 'assets/promo_images/hat.jpg',
          title: 'Diskon 50% Hat Cleaning',
          description:
              'Gratis cuci 1 pasang sepatu untuk kamu member Chatatan Group',
          points: 100,
        ),
        SizedBox(height: 20),
        ChatShoeWidget(
          imagePath: 'assets/promo_images/promo.jpg',
          title: 'Diskon 20% Cuci Sepatu',
          description:
              'Gratis cuci 1 pasang sepatu untuk kamu member Chatatan Group',
          points: 50,
        ),
        SizedBox(height: 20),
        ChatShoeWidget(
          imagePath: 'assets/promo_images/promo2.jpg',
          title: 'Free 1 Pair Cuci Sepatu',
          description:
              'Gratis cuci 1 pasang sepatu untuk kamu member Chatatan Group',
          points: 250,
        ),
      ],
    );
  }
}
