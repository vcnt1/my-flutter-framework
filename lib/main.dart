import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_preview/device_preview.dart';

import 'app/config/config.dart';
import 'app/feature/state/outter_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: MyColors.statusBar,
      systemNavigationBarColor: MyColors.almostBlack,
    ),
  );

  final Widget myApp = Device.currentBuildMode() == BuildMode.PROFILE
      ? DevicePreview(
          builder: (_) => MyApp(),
        )
      : MyApp();

  runApp(myApp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Xepa',
        debugShowCheckedModeBanner: false,
        supportedLocales: [
          const Locale('pt', 'BR'),
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        theme: MyTheme.light,
        builder: !isRelease ? null : DevicePreview.appBuilder,
        locale: !isRelease ? null : DevicePreview.locale(context),
        home: OutterPage(),
      );
}
