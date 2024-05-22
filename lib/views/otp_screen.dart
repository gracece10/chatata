import 'package:chatatan_app/widgets/bottom_nav_bar.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _otpControllers = List.generate(
    4,
    (_) => TextEditingController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Sign Up',
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 27.0),
              child: Text(
                'Masukkan OTP',
                style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    height: 24.75 / 18.0),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Silahkan cek pesan di Whatsapp kamu yaa!',
              style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  height: 19.25 / 14.0),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => index < 3
                    ? Row(
                        children: [
                          buildOTPBox(index),
                          SizedBox(width: 10), // Atur jarak di sini
                        ],
                      )
                    : buildOTPBox(index),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Kirim ulang OTP",
              style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Color.fromRGBO(246, 142, 66, 1)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.50,
            ),
            ContinueButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomNavBar()));
                },
                text: "Lanjutkan")
          ],
        ),
      ),
    );
  }

  Widget buildOTPBox(int position) {
    return SizedBox(
      width: 50.0,
      height: 50.0,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(
                255, 255, 255, 1), // Atur warna latar belakang di sini
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Color.fromRGBO(207, 207, 207, 1))),
        child: TextField(
          controller: _otpControllers[position],
          keyboardType: TextInputType.number,
          maxLength: 1,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24.0),
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
          ),
          onChanged: (value) {
            if (value.isNotEmpty && value != ' ') {
              if (position < _otpControllers.length - 1) {
                FocusScope.of(context).nextFocus();
              }
            }
          },
        ),
      ),
    );
  }
}
