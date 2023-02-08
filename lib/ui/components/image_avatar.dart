import 'package:flutter/material.dart';
import '../utils/size_manager.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        "assets/png/caleb.png",
        width: orientation == Orientation.portrait
            ? SizeMg.width(90)
            : SizeMg.width(50),
        height: orientation == Orientation.portrait
            ? SizeMg.height(90)
            : SizeMg.height(170),
        fit: BoxFit.fill,
      ),
    );
  }
}
