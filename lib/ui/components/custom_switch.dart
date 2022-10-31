import 'package:flutter/material.dart';
import '../../provider/theme_provider.dart';
import '../utils/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    Key? key,
    required this.themeProvider,
  }) : super(key: key);

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.6,
      child: Switch(
          activeColor: kWhite,
          activeTrackColor: kGrayColor10,
          inactiveThumbColor: kWhite,
          inactiveTrackColor: kGrayColor60,
          activeThumbImage: Image.asset('assets/png/moon.png').image,
          inactiveThumbImage: Image.asset('assets/png/sun.png').image,
          value: themeProvider.isDarkMode,
          // activeColor: kPrimary,
          onChanged: (val) {
            themeProvider.toggleTheme(val);
          }),
    );
  }
}