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
    Orientation orientation = MediaQuery.of(context).orientation;
    return Material(
      color: kTransparent,
      child: Container(
        width: orientation == Orientation.portrait ? SizeMg.height(100) : SizeMg.width(100),
        height: orientation == Orientation.portrait ? SizeMg.height(90) : SizeMg.height(200),
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
            height: SizeMg.height(8),
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