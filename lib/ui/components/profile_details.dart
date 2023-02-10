import 'package:flutter/material.dart';
import 'package:resumeapp/extensions/app_locale.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
    required this.size,
    required this.usernameTextStyle,
    required this.professionTextStyle,
    required this.locationTextStyle,
  }) : super(key: key);

  final Size size;
  final TextStyle usernameTextStyle;
  final TextStyle professionTextStyle;
  final TextStyle locationTextStyle;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Wrap(
      direction: Axis.vertical,
      spacing: orientation == Orientation.portrait ? 4 : 6,
      children: [
        Text(
          context.loc.caleb_jesusegun,
          style: usernameTextStyle,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: size.width * 0.5),
          child: Text(
            context.loc.flutter_developer,
            style: professionTextStyle,
            softWrap: true,
          ),
        ),
        Text(
          context.loc.country,
          style: locationTextStyle,
        ),
      ],
    );
  }
}
