import 'package:flutter/material.dart';
import 'package:notes_app/helper/router_helper.dart';
import 'package:notes_app/util/routes.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'di_container.dart' as di;
import 'provider/language_provider.dart';
import 'provider/localization_provider.dart';
import 'provider/theme_provider.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'util/app_constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
        ChangeNotifierProvider(create: (context) => di.sl<LanguageProvider>()),
        ChangeNotifierProvider(
            create: (context) => di.sl<LocalizationProvider>()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  static final navigatorKey = new GlobalKey<NavigatorState>();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    RouterHelper.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    List<Locale> _locals = [];
    AppConstants.languages.forEach((language) {
      _locals.add(Locale(language.languageCode, language.countryCode));
    });

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          initialRoute: Routes.getSplashScreen(),
          onGenerateRoute: RouterHelper.router.generator,
          title: 'Notes App',
          navigatorKey: MyApp.navigatorKey,
          theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
          locale: Provider.of<LocalizationProvider>(context).locale,
          localizationsDelegates: [
            // AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: _locals,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
