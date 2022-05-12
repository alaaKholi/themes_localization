import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/localization/app_localization.dart';

class LocalizationController extends GetxController {
  Locale? locale;

  void setLocale(Locale locale) {
    if (!AppLocalization.all.contains(locale)) return;
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    locale = Locale(Get.deviceLocale!.languageCode);
    super.onInit();
  }

  void clearLocale() {
    //locale = null;
    update();
  }
}
