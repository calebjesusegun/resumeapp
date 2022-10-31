import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/size_manager.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.calebjesusegun,
          style: usernameTextStyle,
        ),
        SizedBox(
          height: SizeMg.height(3),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: size.width * 0.5),
          child: Text(
            AppLocalizations.of(context)!.flutterDeveloper,
            style: professionTextStyle,
            softWrap: true,
          ),
        ),
        SizedBox(
          height: SizeMg.height(3),
        ),
        Text(
          AppLocalizations.of(context)!.country,
          style: locationTextStyle,
        ),
      ],
    );
  }
}