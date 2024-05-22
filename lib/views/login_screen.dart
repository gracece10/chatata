import 'package:chatatan_app/widgets/bottom_nav_bar.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:chatatan_app/views/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Login',
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomLogo(
              imagePath: 'assets/images/logo2.svg',
              widthRatio: 238 / 375,
              heightRatio: 149 / 812,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 274.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nomor Whatsapp',
                      labelStyle: TextStyle(
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.black,
                  ),

                  SizedBox(height: 38), // Spacer
                  RichText(
                    text: TextSpan(
                      text: 'Belum jadi member? ',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Daftar',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                            },
                        ),
                      ],
                    ),
                  ), // Spacer
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ContinueButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                text: "Lanjutkan")
          ],
        ),
      ),
    );
  }
}
