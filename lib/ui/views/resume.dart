import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
                  "Enthusiastic Flutter Developer and Freelance Designer in love with user-centric designs",
                  style: themeProvider.themeMode == ThemeMode.dark
                      ? kTextStyle4
                      : kTextStyle5,
                ),
                SizedBox(
                  height: SizeMg.height(24),
                ),
                Text(
                  "Skills",
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
                      labelText: "Figma",
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                    SkillsCard(
                      imagePath: 'assets/svg/flutter.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: "Flutter",
                      backgroundColor: themeProvider.themeMode == ThemeMode.dark
                          ? kGrayColor10
                          : kGrayColor90,
                    ),
                    SkillsCard(
                      imagePath: 'assets/svg/dart.svg',
                      labelTextStyle: themeProvider.themeMode == ThemeMode.dark
                          ? kTextStyle4
                          : kTextStyle6,
                      labelText: "Dart",
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
                  "Experiences",
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
                      dateText: "October 26, 2022 - Present",
                      professionText: "Flutter Developer Mentor",
                      companyText: "Flutter Inc.",
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
                      dateText: "2021 - Present",
                      professionText: "UI/UX Designer",
                      companyText: "Figma Inc.",
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
                      dateText: "2020 - Present",
                      professionText: "Flutter Developer",
                      companyText: "Flutter Inc.",
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
