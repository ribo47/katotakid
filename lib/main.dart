import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:katotakid/common/page_enum.dart';
import 'package:katotakid/pages/configurator_page.dart';
import 'package:katotakid/pages/menu_page.dart';
import 'package:katotakid/pages/total.dart';
import 'package:katotakid/pages/welcome_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('it')],
      path: 'assets/text',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KKConfigurator',
      theme: ThemeData(
        //Fonts
        fontFamily: 'Gotham',
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: {
        '/': (context) => const WelcomePage(),
        '/menu': (context) => const MenuPage(),
        '/configure': (context) => const ConfiguratorPage(initPage: PageEnum.actionFigure),
        '/total': (context) => const TotalPage(totalPrice: 0,),
      },
    );
  }
}
