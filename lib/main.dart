import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resumeapp/provider/theme_provider.dart';
import 'package:resumeapp/ui/views/resume.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: DevicePreview(
          enabled: false,
          builder: (context) => const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          builder: (context, child) {
            return MaterialApp(
              title: 'Resume App',
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) {
                for (final supportedLocale in supportedLocales) {
                  if (locale!.languageCode == supportedLocale.languageCode) {
                    return supportedLocale;
                  }
                }

                return supportedLocales.first;
              },
              locale: const Locale('es', ''),
              builder: DevicePreview.appBuilder,
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