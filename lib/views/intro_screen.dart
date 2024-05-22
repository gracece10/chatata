import 'package:chatatan_app/views/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> images = [
    "assets/images/intro1.png",
    "assets/images/intro2.png",
    "assets/images/intro3.png",
  ];
  final double dotSize = 6.0;
  List<String> imageTexts = [
    "Jadi Member Chatatan Banyak Kelebihannya!",
    "Dapatkan Lebih Banyak Poin & Rewards",
    "Sekarang Bisa Appointment Lewat App",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            child: SvgPicture.asset(
              "assets/images/logo.svg",
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width,
            ),
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height * 0.10,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height * 0.65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.20,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Center(
                child: Text(
                  imageTexts[_currentPage],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    height: 37.8 / 28,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    width: 328.0,
                    height: 62.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color.fromRGBO(246, 142, 66, 1)),
                    child: Center(
                      child: Text(
                        "Lanjutkan",
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 8),
      height: dotSize,
      width: dotSize,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
