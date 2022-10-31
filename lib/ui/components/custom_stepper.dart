import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/size_manager.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    Key? key,
    required this.stepperColor,
    required this.companyText,
    required this.companyTextStyle,
    required this.professionText,
    required this.professionTextStyle,
    required this.dateText,
    required this.dateTextStyle,
  }) : super(key: key);

  final Color stepperColor;
  final String companyText;
  final TextStyle companyTextStyle;
  final String professionText;
  final TextStyle professionTextStyle;
  final String dateText;
  final TextStyle dateTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: stepperColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(
              height: SizeMg.height(12),
            ),
            Container(
              width: 2,
              height: 60.0,
              color: kGrayColor70,
            ),
          ],
        ),
        SizedBox(
          width: SizeMg.width(16),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              companyText,
              style: companyTextStyle,
            ),
            SizedBox(
              height: SizeMg.height(3),
            ),
            Text(
              professionText,
              style: professionTextStyle,
            ),
            SizedBox(
              height: SizeMg.height(3),
            ),
            Text(
              dateText,
              style: dateTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}