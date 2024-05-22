import 'package:chatatan_app/views/account_screen.dart';
import 'package:chatatan_app/views/booking_appointment_screen.dart';
import 'package:chatatan_app/views/rewards_screen.dart';
import 'package:chatatan_app/views/scan_screen.dart';
import 'package:chatatan_app/views/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatatan_app/views/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Map<String, dynamic>> bottomNavItems = [
    {"icon": "assets/images/home.svg", "label": "Home"},
    {"icon": "assets/images/booking.svg", "label": "Booking"},
    {"icon": "assets/images/scan.svg", "label": "Scan"},
    {"icon": "assets/images/transaksi.svg", "label": "Transaksi"},
    {"icon": "assets/images/account.svg", "label": "Account"},
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return const HomeScreen();
        case 1:
          return BookingAppointmentScreen();
        case 2:
          return HomeScreen();
        case 3:
          return TransactionScreen();
        case 4:
          return AccountScreen();
        default:
          return const HomeScreen();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: SizedBox(
        height: 92.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 2.5, left: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                bottomNavItems.length,
                (index) {
                  if (index == 2) {
                    return currentPage == 0 || currentPage == 2
                        ? InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ScanScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromRGBO(
                                              246, 142, 66, 1),
                                        ),
                                      ),
                                      Positioned(
                                        top: 5.0,
                                        left: 0,
                                        right: 0,
                                        child: SvgPicture.asset(
                                          bottomNavItems[index]["icon"],
                                          width: 43.97,
                                          height: 52.08,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RewardScreen()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Column(
                                children: [
                                  Positioned(
                                    top: 5.0,
                                    left: 0,
                                    right: 0,
                                    child: SvgPicture.asset(
                                      "assets/images/star rewards.svg",
                                      width: 23.0,
                                      height: 23,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Text(
                                      "Rewards",
                                      style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0,
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                  } else {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            bottomNavItems[index]["icon"],
                            width: 23,
                            height: 24,
                            color: Color.fromRGBO(34, 34, 34, 1),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            bottomNavItems[index]["label"],
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              color: Color.fromRGBO(34, 34, 34, 1),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
