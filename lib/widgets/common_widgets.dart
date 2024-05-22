import 'package:chatatan_app/widgets/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final Widget? customIcon;
  final VoidCallback? onCustomIconPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBackPressed,
    this.customIcon,
    this.onCustomIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.Headline1),
      centerTitle: true,
      leading: onBackPressed != null ? _buildLeading(context) : null,
      actions: customIcon != null ? [_buildCustomIcon(context)] : null,
    );
  }

  Widget? _buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, size: 18),
      onPressed: onBackPressed!,
    );
  }

  Widget _buildCustomIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(onTap: onCustomIconPressed, child: customIcon!),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    Key? key,
    required this.imagePath,
    required this.widthRatio,
    required this.heightRatio,
    this.padding =
        const EdgeInsets.only(top: 50.0), // Atur nilai default padding di sini
  }) : super(key: key);

  final String imagePath;
  final double widthRatio;
  final double heightRatio;
  final EdgeInsets padding; // Tambahkan properti padding

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SvgPicture.asset(
        imagePath,
        width: MediaQuery.of(context).size.width * widthRatio,
        height: MediaQuery.of(context).size.height * heightRatio,
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ContinueButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(25.0),
        splashFactory: InkSplash.splashFactory,
        child: Ink(
          decoration: BoxDecoration(
            color: Color.fromRGBO(246, 142, 66, 1),
            borderRadius: BorderRadius.circular(25.0),
          ),
          width: 323.0,
          height: 60.0,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'satoshi',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
