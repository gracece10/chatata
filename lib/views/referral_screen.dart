import 'package:chatatan_app/widgets/app_colors.dart';
import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Referral",
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 24.0, right: 24.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "200 Poin Extra Buat Kamu!",
                style: AppTextStyles.Headline1.copyWith(
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 13.5),
              Text(
                  "Dapatkan 200 Poin setiap kali teman kamu\ninstall dan daftar app membership Chatatan",
                  style: AppTextStyles.Subheadline1),
              SizedBox(height: 10.0),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Image.asset("assets/images/Ellipse_10.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 20.0),
                    child: Image.asset("assets/images/hand.png"),
                  ),
                ],
              ),
              SizedBox(height: 66.0),
              Divider(
                thickness: 1.0,
                color: Color.fromRGBO(197, 197, 197, 100),
              ),
              Text("Bagikan Kode Referal"),
              Container(
                height: 56.0,
                width: 258.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.black),
                    color: AppColors.Orange),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "RT6780",
                        style: AppTextStyles.Large1.copyWith(
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SvgPicture.asset("assets/images/copy.svg")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
