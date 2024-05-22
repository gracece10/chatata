import 'package:chatatan_app/views/rewards_screen.dart';
import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:chatatan_app/widgets/image_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndexTop = 0;
  int _currentIndexBottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Image.asset("assets/images/background.png"),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                      Row(
                        children: [
                          Text(
                            "Ridwan",
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            "👋",
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Reguler Member",
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/logo.svg",
                        height: 36.0,
                        width: 58.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: SvgPicture.asset(
                          "assets/images/notification.svg",
                          height: 25,
                          width: 21.88,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 135, left: 25.0),
              child: Row(
                children: [
                  Container(
                    width: 191,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nomor",
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "D3FDO9",
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Poin",
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "10 Poin",
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RewardScreen()),
                      );
                    },
                    borderRadius: BorderRadius.circular(15),
                    splashFactory: InkRipple.splashFactory,
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 142, 66, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 112,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(246, 142, 66, 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/star.svg",
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(height: 5), // Spacer
                            Text(
                              "Rewards",
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 220.0),
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: imageList.length,
                    options: CarouselOptions(
                      aspectRatio: 317 / 142,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndexTop = index;
                        });
                      },
                      viewportFraction: 0.9,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final imageUrl = imageList[index];
                      return buildImageCarouselItem(imageUrl);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.map((url) {
                        int index = imageList.indexOf(url);
                        return Container(
                          width: 5.0,
                          height: 4.0,
                          margin: EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndexTop == index
                                ? Colors.black
                                : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 185.0, left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Book Appointment",
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  147 /
                                  812,
                              width:
                                  MediaQuery.of(context).size.width * 327 / 375,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                    color: Color.fromRGBO(246, 142, 66, 1)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Booking Chat Barber",
                                              style: TextStyle(
                                                fontFamily: 'satoshi',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Text(
                                              "Book appointment hair cut/perawatan",
                                              style: TextStyle(
                                                fontFamily: 'satoshi',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            Text(
                                              "Chat Barber lainnya lewat sini yaa!",
                                              style: TextStyle(
                                                fontFamily: 'satoshi',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 20.0),
                                        Stack(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/images/Ellipse.svg",
                                              width: 64.0,
                                              height: 64.0,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SvgPicture.asset(
                                                "assets/images/Vector.svg",
                                                width: 23.0,
                                                height: 19.23,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(13.0),
                                              child: SvgPicture.asset(
                                                "assets/images/Gunting.svg",
                                                width: 38.75,
                                                height: 40.27,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              281 /
                                              375,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              41 /
                                              812,
                                          //padding: EdgeInsets.symmetric(vertical: 15),
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(246, 142, 66, 1),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Booking Sekarang',
                                              style: TextStyle(
                                                  fontFamily: 'satoshi',
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                height: MediaQuery.of(context).size.height *
                                    147 /
                                    812,
                                width: MediaQuery.of(context).size.width *
                                    327 /
                                    375,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                        color: Color.fromRGBO(246, 142, 66, 1)),
                                    color: Color.fromRGBO(18, 18, 18, 85)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/images/lock.svg"),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Unclock Fitur Booking\nDengan Premium Member",
                                      style:
                                          AppTextStyles.Subheadline4.copyWith(
                                              color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 590.0, left: 8.0),
              child: CarouselSlider.builder(
                itemCount: BannerList.length,
                options: CarouselOptions(
                  aspectRatio: 313 / 112,
                  enlargeCenterPage: true,
                  // enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndexBottom = index;
                    });
                  },
                  viewportFraction: 1,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (context, index, realIndex) {
                  final imageUrl = BannerList[index];
                  return buildImageCarouselItem(imageUrl);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 710.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: BannerList.map((url) {
                  int index = BannerList.indexOf(url);
                  return Container(
                    width: 5.0,
                    height: 4.0,
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndexBottom == index
                          ? Colors.black
                          : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageCarouselItem(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imageUrl,
          width: 317,
          height: 142,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
