import 'package:chatatan_app/views/booking_summary_screen.dart';
import 'package:chatatan_app/widgets/app_colors.dart';
import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:chatatan_app/widgets/bottom_nav_bar.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final TextStyle style;

  const CustomTitle({
    required this.title,
    required this.style,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final BoxDecoration decoration;
  final Widget child;

  const CustomContainer({
    required this.width,
    required this.height,
    required this.decoration,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
    );
  }
}

class CustomRowWithIcon extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final String iconPath;

  const CustomRowWithIcon({
    this.text,
    this.style,
    required this.iconPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (text != null)
            Text(
              text!,
              style: style,
            ),
          SvgPicture.asset(
            iconPath,
          ),
        ],
      ),
    );
  }
}

class BookingAppointmentScreen extends StatefulWidget {
  const BookingAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<BookingAppointmentScreen> createState() =>
      _BookingAppointmentScreenState();
}

class _BookingAppointmentScreenState extends State<BookingAppointmentScreen> {
  List<String> timeSlots = List.generate(
      15, (index) => (index + 8).toString().padLeft(2, '0') + ':00');
  String? selectedTime;

  List<String> names = [
    'Angga',
    'Rayhan F.S',
    'Kamaludin',
    'Raffi A.S',
    'Muhammad Iqbal'
  ];
  String? selectedName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Book Appointment",
        onBackPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => BottomNavBar()),
            (Route<dynamic> route) => false,
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, top: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(
                      title: "Pilih Cabang Chat Barber",
                      style: AppTextStyles.Subheadline2),
                  Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: CustomContainer(
                        width: 323.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: CustomRowWithIcon(
                          text: "Chat Barber Cempaka",
                          style: AppTextStyles.Subheadline5,
                          iconPath: "assets/images/arrow.svg",
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: CustomTitle(
                        title: "Pilih Perawatan",
                        style: AppTextStyles.Subheadline2),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: CustomContainer(
                        width: 323.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: CustomRowWithIcon(
                          text: "Cut & Wash",
                          iconPath: "assets/images/arrow.svg",
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: CustomTitle(
                        title: "Pilih Tanggal",
                        style: AppTextStyles.Subheadline2),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: CustomContainer(
                          width: 323.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.SoftGrey),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: CustomRowWithIcon(
                              text: "",
                              style: AppTextStyles.Subheadline5,
                              iconPath: "assets/images/calender.svg"))),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTitle(
                                title: "Jam",
                                style: AppTextStyles.Subheadline2),
                            Row(
                              children: [
                                Container(
                                  width: 15.0,
                                  height: 15.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: AppColors.Grey),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "Booking Penuh",
                                  style: AppTextStyles.BodyText,
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Baca Ketentuan Booking",
                              style: AppTextStyles.BodyTextMedium,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            SvgPicture.asset("assets/images/warning.svg")
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          child: Wrap(
                            spacing: 6.0,
                            runSpacing: 8.0,
                            children: List.generate(
                              15,
                              (index) {
                                int hour = index + 8;
                                String formattedHour =
                                    hour.toString().padLeft(2, '0');
                                String timeText = '$formattedHour:00';
                                bool isSelected = selectedTime == timeText;
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedTime = timeText;
                                    });
                                  },
                                  child: Container(
                                    width: 48.0,
                                    height: 46.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border:
                                          Border.all(color: AppColors.SoftGrey),
                                      color: isSelected
                                          ? AppColors.SoftGreen
                                          : null, // Ubah warna saat dipilih
                                    ),
                                    child: Center(
                                      child: Text(
                                        timeText,
                                        style: AppTextStyles.BodyTextMedium,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 18.0),
                        Text(
                          "*Booking minimal 1 jam sebelum jam perawatan yang dipilih",
                          style: AppTextStyles.BodyText,
                        ),
                        SizedBox(height: 11.0),
                        Text(
                          "*Jam appointment melalui aplikasi buka dari jam\n08-00 - 15:00 WITA. ",
                          style: AppTextStyles.BodyText,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTitle(
                                title: "Pilih Barber",
                                style: AppTextStyles.Subheadline2),
                            Row(
                              children: [
                                Container(
                                  width: 15.0,
                                  height: 15.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: AppColors.Grey),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "Sudah di Booking",
                                  style: AppTextStyles.BodyText,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 10.0,
                          children: List.generate(
                            names.length,
                            (index) {
                              String name = names[index];
                              bool isSelected = selectedName == name;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedName = name;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.SoftGrey),
                                    borderRadius: BorderRadius.circular(15.0),
                                    color:
                                        isSelected ? AppColors.SoftGreen : null,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 12.0),
                                  child: Text(name,
                                      style: AppTextStyles.BodyTextMedium),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ContinueButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookingSummaryScreen()));
                },
                text: "Lanjutkan")
          ],
        ),
      ),
    );
  }
}
