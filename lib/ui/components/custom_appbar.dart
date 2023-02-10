import 'package:flutter/material.dart';
import 'package:resumeapp/extensions/app_locale.dart';
import '../../provider/theme_provider.dart';
import '../utils/app_colors.dart';
import 'custom_switch.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.backgroundColor,
    required this.labelTextStyle,
    required this.themeProvider,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final Color backgroundColor;
  final TextStyle labelTextStyle;
  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: kGrayColor80,
          height: 1,
        ),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Text(
        context.loc.resume_app,
        style: labelTextStyle,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomSwitch(themeProvider: themeProvider),
        ),
      ],
    );
  }
}
