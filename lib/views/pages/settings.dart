import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/controllers/localization_controller.dart';
import 'package:theme_app/localization/app_localization.dart';

import 'theme_settings_page.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LocalizationController>();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                AppLocalization.getString().theme,
              ),
              leading: const Icon(Icons.dark_mode),
              onTap: () {
                Get.to(() => ThemeSettingsPage());
              },
            ),
            ListTile(
              title: Text(AppLocalization.getString().language),
              subtitle: Text(
                AppLocalization.getString().languageValue,
              ),
              leading: const Icon(Icons.public),
              trailing: Text(AppLocalization.getString().change),
              onTap: () {
                changeLanguageDialog(context, controller);
              },
            ),
            ListTile(
                title: Text(AppLocalization.getString().logOut),
                leading: const Icon(
                  Icons.logout,
                  size: 18,
                ),
                onTap: () async {
                  //TODO: logout logic
                })
          ],
        ),
      ),
    );
  }

  Future<dynamic> changeLanguageDialog(
      BuildContext context, LocalizationController controller) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: AppLocalization.all
                .map(
                  (e) => ListTile(
                    title: Text(e.fullName),
                    leading: Text(AppLocalization.getFlag(e.languageCode)),
                    onTap: () {
                      controller.setLocale(e);
                      Get.back();
                    },
                  ),
                )
                .toList()),
      ),
    );
  }
}
