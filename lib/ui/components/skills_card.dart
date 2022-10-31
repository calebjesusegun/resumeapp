import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_colors.dart';
import '../utils/size_manager.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    Key? key,
    required this.labelText,
    required this.labelTextStyle,
    required this.imagePath,
    required this.backgroundColor,
  }) : super(key: key);

  final String labelText;
  final TextStyle labelTextStyle;
  final String imagePath;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kTransparent,
      child: Container(
        width: SizeMg.width(115),
        height: SizeMg.height(90),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(
            imagePath,
            width: 32,
            height: 32,
          ),
          SizedBox(
            height: SizeMg.height(6),
          ),
          Text(
            labelText,
            style: labelTextStyle,
          ),
        ]),
      ),
    );
  }
}