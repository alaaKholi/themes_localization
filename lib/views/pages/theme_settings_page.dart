import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:get/get.dart';
import 'package:theme_app/localization/app_localization.dart';

import '../../app/themes.dart';

class ThemeSettingsPage extends StatelessWidget {
  ThemeSettingsPage({Key? key}) : super(key: key);
  final themes = [
    AppLocalization.getString().dark,
    AppLocalization.getString().light,
    AppLocalization.getString().custom
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: themes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(themes[index]),
              onTap: () {
                switch (index) {
                  case 0:
                    Get.changeTheme(Themes.darkTheme);
                    break;
                  case 1:
                    Get.changeTheme(Themes.lightTheme);
                    break;
                  case 2:
                    _openDialog(
                        context, AppLocalization.getString().chooseColor);
                    break;
                }
              },
            );
          }),
    );
  }

  void _openDialog(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(6.0),
          title: Text(title),
          content: SizedBox(
            height: 250,
            child: MaterialColorPicker(
              selectedColor: Colors.green,
              onColorChange: (color) {
                Get.changeTheme(Themes.lightTheme.copyWith(
                    primaryColor: color,
                    appBarTheme: AppBarTheme(color: color)));
                Get.back();
              },
            ),
          ),
        );
      },
    );
  }
}
