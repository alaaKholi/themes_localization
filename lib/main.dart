import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/controllers/localization_controller.dart';
import 'package:theme_app/localization/app_localization.dart';
import 'package:theme_app/views/pages/settings.dart';

import 'app/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final localizationController = Get.put<LocalizationController>(
      LocalizationController(),
      permanent: true);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        navigatorKey: navigatorKey,
        localizationsDelegates: AppLocalization.localizationsDelegates,
        supportedLocales: AppLocalization.all,
        locale: localizationController.locale,
        fallbackLocale: AppLocalization.all.first,
        theme: Themes.lightTheme,
        themeMode: ThemeMode.light,
        home: const SettingsScreen());
  }
}

class Themingg extends StatelessWidget {
  const Themingg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Text 1',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          const Text(
            'Text 2',
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Click on'),
            style: ElevatedButton.styleFrom(
              //primary: Colors.blue,
              minimumSize: const Size(300, 50),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          Text(
            'You\'ve done',
            style: Theme.of(context).textTheme.headline6,
          ),
          Theme(
            data: ThemeData(
              primaryColor: Colors.red,
            ),
            child: Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Theme.of(context).primaryColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
