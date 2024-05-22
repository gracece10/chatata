import 'package:chatatan_app/views/referral_screen.dart';
import 'package:chatatan_app/widgets/account_menu.dart';
import 'package:chatatan_app/widgets/app_colors.dart';
import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 48, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/images/account1.svg",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, left: 4.0),
                      child: Positioned(
                        left: 0,
                        top: 0,
                        bottom: 0,
                        right: 0,
                        child: SvgPicture.asset(
                          "assets/images/account2.svg",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Text(
                    "Ridwan Amin",
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/star member.svg",
                        width: 22.58,
                        height: 22.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Regular Member",
                        style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 21.0),
                  child: Container(
                    width: 323.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.RedStroke,
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 178, 125, 1),
                          ]),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Member Number",
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "4AFG32",
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.RedStroke),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          VerticalDivider(
                            color: Color.fromRGBO(244, 213, 200, 1),
                            thickness: 1.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/poin.svg",
                                    width: 42.0,
                                    height: 42.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 26.0, top: 8.0),
                                    child: SvgPicture.asset(
                                      "assets/images/star poin.svg",
                                      width: 7.0,
                                      height: 6.19,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 10.0),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chatatan Poin",
                                    style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "330",
                                    style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.RedStroke),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ReferralScreen()));
                    },
                    child: Ink(
                      width: 321.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(150, 150, 150, 1)),
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color.fromRGBO(255, 232, 232, 1)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 20.0, right: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/images/ekstra poin.svg",
                              width: 53.0,
                              height: 53.31,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ekstra 200 Poin Buat Kamu nih!",
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Ajak teman kamu untuk install dan",
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "daftar app membership Chatatan",
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Container(
                    width: 321.0,
                    height: 121.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.RedStroke),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 24.0, right: 24.0, top: 15.50),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Voucher Poin",
                                      style:
                                          AppTextStyles.Subheadline6.copyWith(
                                              color: AppColors.RedStroke)),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Punya Kode Voucher? Tambahkan disini!",
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("MP3Fest2024",
                                      style:
                                          AppTextStyles.Subheadline3.copyWith(
                                              color: AppColors.RedStroke)),
                                ],
                              ),
                              SvgPicture.asset("assets/images/ticket.svg")
                            ],
                          ),
                          SizedBox(
                            height: 5.50,
                          ),
                          Divider(
                            color: Color.fromRGBO(206, 206, 206, 1),
                            thickness: 1.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(37),
                    topRight: Radius.circular(37),
                  ),
                  color: AppColors.SoftOrange),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AccountMenu(title: 'Membership'),
                    AccountMenu(title: 'Tentang chatatan Group'),
                    AccountMenu(title: 'FAQ'),
                    AccountMenu(title: 'Pengaturan'),
                    AccountMenu(title: 'Pusat Bantuan'),
                    AccountMenu(title: 'Kebijakan Privasi'),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Butuh Bantuan?",
                          style: AppTextStyles.Headline2),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Center(
                        child: Container(
                          width: 321.0,
                          height: 72.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(191, 191, 191, 1)),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/images/whatsapp.svg"),
                                SizedBox(width: 10.0),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Chatatan Customer Service (chat-only)",
                                        style: AppTextStyles.BodyText),
                                    Text(
                                      "0811 7658 999",
                                      style: TextStyle(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 29.0),
                      child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(226, 95, 0, 1)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
