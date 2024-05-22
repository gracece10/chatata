import 'package:chatatan_app/views/otp_screen.dart';
import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:chatatan_app/widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            CustomLogo(
              imagePath: "assets/images/logo2.svg",
              widthRatio: 106 / 375,
              heightRatio: 66 / 812,
              padding: EdgeInsets.only(top: 18.0),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Nama Lengkap',
                        labelStyle: AppTextStyles.Subheadline4,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(192, 192, 192, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.only(top: 50),
                      ),
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Text('*sesuai KTP',
                        style: AppTextStyles.Subheadline5.copyWith(
                            color: Color.fromRGBO(123, 123, 123, 1))),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Tanggal Lahir",
                      style: AppTextStyles.Subheadline4,
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 49.0,
                      width: 321.0,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Tanggal/Bulan/Tahun',
                          hintStyle: AppTextStyles.Subheadline5,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 1)),
                              borderRadius: BorderRadius.circular(10.0)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(217, 217, 217, 1),
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.datetime,
                        cursorColor: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: AppTextStyles.Subheadline4,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(192, 192, 192, 1),
                            ),
                          ),
                          contentPadding: EdgeInsets.only(top: 50)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Nomor Whatsapp',
                          labelStyle: AppTextStyles.Subheadline4,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(192, 192, 192, 1)),
                          ),
                          contentPadding: EdgeInsets.only(top: 50)),
                      keyboardType: TextInputType.phone,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Kode Refeal',
                          labelStyle: AppTextStyles.Subheadline4,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(192, 192, 192, 1)),
                          ),
                          contentPadding: EdgeInsets.only(top: 50)),
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ContinueButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    text: "Lanjutkan"))
          ],
        ),
      ),
    );
  }
}
