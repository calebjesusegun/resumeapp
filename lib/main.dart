import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resumeapp/provider/theme_provider.dart';
import 'package:resumeapp/ui/views/resume.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final String deviceLocale = Platform.localeName;
    print(deviceLocale);
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final String deviceLocale = Platform.localeName.split('-')[0];
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          // localeResolutionCallback:
          //     (Locale? locale, Iterable<Locale> supportedLocales) {
          //   for (final supportedLocale in supportedLocales) {
          //     if (deviceLocale == supportedLocale.languageCode) {
          //       return supportedLocale;
          //     }
          //   }
          //   return supportedLocales.first;
          // },
          themeMode: themeProvider.themeMode,
          useInheritedMediaQuery: true,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const ResumeView(),
        );
      },
    );
  }
}
