import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget {
  final String title;

  const AccountMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyles.Subheadline4),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black,
            )
          ],
        ),
        SizedBox(height: 13.0),
        Divider(
          thickness: 1.0,
          color: Color.fromRGBO(169, 169, 169, 1),
        ),
        SizedBox(height: 13.0),
      ],
    );
  }
}
