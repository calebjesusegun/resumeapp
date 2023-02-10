import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resumeapp/extensions/app_locale.dart';
import '../../provider/theme_provider.dart';
import '../components/custom_appbar.dart';
import '../components/custom_stepper.dart';
import '../components/image_avatar.dart';
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
                horizontal: SizeMg.width(16), vertical: SizeMg.height(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const ImageAvatar(),
                    SizedBox(
                      width: SizeMg.width(12),
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
                  context.loc.bio,
                  style: themeProvider.themeMode == ThemeMode.dark
                      ? kTextStyle4
                      : kTextStyle5,
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Text(
                  context.loc.skills,
                  style: themeProvider.themeMode == ThemeMode.dark
                      ? kTextStyle8
                      : kTextStyle7,
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 24,
                  children: [
                    SkillsCard(
                      imagePath: 'assets/svg/figma.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: context.loc.figma,
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                    SkillsCard(
                      imagePath: 'assets/svg/flutter.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: context.loc.flutter,
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                    SkillsCard(
                      imagePath: 'assets/svg/dart.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: context.loc.dart,
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
                  context.loc.experiences,
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
                      dateTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle5,
                      stepperColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor20
                          : kGrayColor40,
                      professionTextStyle:
                          themeProvider.themeMode == ThemeMode.dark
                              ? kTextStyle4
                              : kTextStyle6,
                      dateText: context.loc.date_text1,
                      professionText: context.loc.profession_text1,
                      companyText: context.loc.company_text1,
                      companyTextStyle:
                          themeProvider.themeMode == ThemeMode.dark
                              ? kTextStyle8
                              : kTextStyle7,
                    ),
                    SizedBox(
                      height: SizeMg.height(16),
                    ),
                    CustomStepper(
                      dateTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle5,
                      stepperColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor20
                          : kGrayColor40,
                      professionTextStyle:
                          themeProvider.themeMode == ThemeMode.dark
                              ? kTextStyle4
                              : kTextStyle6,
                      dateText: context.loc.date_text2,
                      professionText: context.loc.profession_text2,
                      companyText: context.loc.company_text2,
                      companyTextStyle:
                          themeProvider.themeMode == ThemeMode.dark
                              ? kTextStyle8
                              : kTextStyle7,
                    ),
                    SizedBox(
                      height: SizeMg.height(16),
                    ),
                    CustomStepper(
                      dateTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle5,
                      stepperColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor20
                          : kGrayColor40,
                      professionTextStyle:
                          themeProvider.themeMode == ThemeMode.dark
                              ? kTextStyle4
                              : kTextStyle6,
                      dateText: context.loc.date_text3,
                      professionText: context.loc.profession_text3,
                      companyText: context.loc.company_text3,
                      companyTextStyle:
                          themeProvider.themeMode == ThemeMode.dark
                              ? kTextStyle8
                              : kTextStyle7,
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
