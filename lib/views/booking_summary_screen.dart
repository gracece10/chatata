import 'package:chatatan_app/views/mybooking_screen.dart';
import 'package:chatatan_app/widgets/app_colors.dart';
import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:chatatan_app/widgets/bottom_nav_bar.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class BookingSummaryScreen extends StatefulWidget {
  const BookingSummaryScreen({super.key});

  @override
  State<BookingSummaryScreen> createState() => _BookingSummaryScreenState();
}

class _BookingSummaryScreenState extends State<BookingSummaryScreen> {
  FocusNode textFieldFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Booking Summary",
          onBackPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => BottomNavBar()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 24.0, left: 24.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "@ Chat Barber Cempaka",
                        style: AppTextStyles.Subheadline4,
                      ),
                      Text(
                        "Ubah",
                        style: AppTextStyles.BodyText,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 1,
                    color: AppColors.LightGrey,
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Perawatan",
                        style: AppTextStyles.Subheadline5,
                      ),
                      Text(
                        "Ubah",
                        style: AppTextStyles.BodyText,
                      ),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    "Hair Cut",
                    style: AppTextStyles.Subheadline4,
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 1,
                    color: AppColors.LightGrey,
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        "Tanggal",
                        style: AppTextStyles.Subheadline5,
                      ),
                      SizedBox(width: 18.0),
                      Text(
                        "Minggu, 28 Januari 2024",
                        style: AppTextStyles.Subheadline4,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 1,
                    color: AppColors.LightGrey,
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        "Jam",
                        style: AppTextStyles.Subheadline5,
                      ),
                      SizedBox(width: 40.0),
                      Text(
                        "12am",
                        style: AppTextStyles.Subheadline4,
                      ),
                      Spacer(),
                      Text(
                        "Ubah",
                        style: AppTextStyles.BodyText,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 1,
                    color: AppColors.LightGrey,
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        "Barber",
                        style: AppTextStyles.Subheadline5,
                      ),
                      SizedBox(width: 25.0),
                      Text(
                        "Angga",
                        style: AppTextStyles.Subheadline4,
                      ),
                      Spacer(),
                      Text(
                        "Ubah",
                        style: AppTextStyles.BodyText,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    thickness: 1,
                    color: AppColors.LightGrey,
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Cek sekali lagi yaa! Kalo sudah mantap langsung",
                  style: AppTextStyles.Subheadline5,
                ),
                ContinueButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MybookingScreen()));
                    },
                    text: "Booking Sekarang")
              ],
            ),
          ],
        ));
  }
}
