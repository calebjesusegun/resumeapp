import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../provider/theme_provider.dart';
import '../components/custom_appbar.dart';
import '../components/custom_stepper.dart';
import '../components/profile_details.dart';
import '../components/skills_card.dart';
import '../utils/app_colors.dart';
import '../utils/size_manager.dart';
import '../utils/text_styles.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: themeProvider.themeMode == ThemeMode.dark
          ? CustomAppBar(
              backgroundColor: kGrayColor0,
              labelTextStyle: kTextStyle2,
              themeProvider: themeProvider,
            )
          : CustomAppBar(
              backgroundColor: kWhite,
              labelTextStyle: kTextStyle3,
              themeProvider: themeProvider),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeMg.width(16), vertical: SizeMg.height(24)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/png/caleb.png",
                        width: SizeMg.width(80),
                        height: SizeMg.height(80),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: SizeMg.width(16),
                    ),
                    themeProvider.themeMode == ThemeMode.dark
                        ? ProfileDetails(
                            size: size,
                            usernameTextStyle: kTextStyle8,
                            locationTextStyle: kTextStyle4,
                            professionTextStyle: kTextStyle4,
                          )
                        : ProfileDetails(
                            size: size,
                            usernameTextStyle: kTextStyle7,
                            locationTextStyle: kTextStyle5,
                            professionTextStyle: kTextStyle6,
                          ),
                  ],
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Text(
                  AppLocalizations.of(context)!.bio,
                  style: themeProvider.themeMode == ThemeMode.dark
                      ? kTextStyle4
                      : kTextStyle5,
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Text(
                  AppLocalizations.of(context)!.skills,
                  style: themeProvider.themeMode == ThemeMode.dark
                      ? kTextStyle8
                      : kTextStyle7,
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: [
                    SkillsCard(
                      imagePath: 'assets/svg/figma.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: AppLocalizations.of(context)!.figma,
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                    SkillsCard(
                      imagePath: 'assets/svg/flutter.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: AppLocalizations.of(context)!.flutter,
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                    SkillsCard(
                      imagePath: 'assets/svg/dart.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: AppLocalizations.of(context)!.dart,
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Text(
                  AppLocalizations.of(context)!.experiences,
                  style: themeProvider.themeMode == ThemeMode.dark
                      ? kTextStyle8
                      : kTextStyle7,
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Column(
                  children: [
                    CustomStepper(
                      dateTextStyle: themeProvider.themeMode == ThemeMode.dark ? kTextStyle4 : kTextStyle5,
                      stepperColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor20
                          : kGrayColor40,
                      professionTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4 : kTextStyle6,
                      dateText: AppLocalizations.of(context)!.dateText1,
                      professionText: AppLocalizations.of(context)!.professionText1,
                      companyText: AppLocalizations.of(context)!.companyText1,
                      companyTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle8 : kTextStyle7,
                    ),
                    SizedBox(
                      height: SizeMg.height(16),
                    ),
                    CustomStepper(
                      dateTextStyle: themeProvider.themeMode == ThemeMode.dark ? kTextStyle4 : kTextStyle5,
                      stepperColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor20
                          : kGrayColor40,
                      professionTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4 : kTextStyle6,
                      dateText: AppLocalizations.of(context)!.dateText2,
                      professionText: AppLocalizations.of(context)!.professionText2,
                      companyText: AppLocalizations.of(context)!.companyText2,
                      companyTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle8 : kTextStyle7,
                    ),
                    SizedBox(
                      height: SizeMg.height(16),
                    ),
                    CustomStepper(
                      dateTextStyle: themeProvider.themeMode == ThemeMode.dark ? kTextStyle4 : kTextStyle5,
                      stepperColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor20
                          : kGrayColor40,
                      professionTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4 : kTextStyle6,
                      dateText: AppLocalizations.of(context)!.dateText3,
                      professionText: AppLocalizations.of(context)!.professionText3,
                      companyText: AppLocalizations.of(context)!.companyText3,
                      companyTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle8 : kTextStyle7,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
