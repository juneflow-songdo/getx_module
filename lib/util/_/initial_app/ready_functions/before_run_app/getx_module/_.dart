import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../main.dart';
import '../../../../../config/getx_module/_.dart';
import '../../../../shared_params/_/material_app.dart';
import '../../../../shared_params/_/material_app_obj.dart';

@ReadyBeforeRunApp(index: 1.01)
Future<void> readyForGetXModule() async {
  setGetXPathUrlStrategy();

  currentMaterialApp = GetMaterialApp(
    localizationsDelegates: MaterialAppParams.localizationsDelegates,
    supportedLocales: MaterialAppParams.supportedLocales ?? const <Locale>[Locale('en', 'US')],
    locale: MaterialAppParams.locale,
    title: MaterialAppParams.appName ?? 'June',
    theme: MaterialAppParams.lightTheme,
    darkTheme: MaterialAppParams.darkTheme,
    themeMode: MaterialAppParams.themeMode ?? ThemeMode.system,
    debugShowCheckedModeBanner: false,
    builder: (context, child) {
      return child!;
    },
    navigatorObservers: MaterialAppParams.navigatorObservers ?? [],
    home: MyAppHome ?? InitView(),
  );
}
