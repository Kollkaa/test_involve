import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:global_configuration/global_configuration.dart';
import 'service/controllers/backend_controller.dart';
import 'routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("configurations.json");
  await GetStorage.init();
  Get.put<BackendController>(
    BackendController(),
    permanent: true,
  );
  runApp(
      new GetMaterialApp(
    smartManagement: SmartManagement.full,
    debugShowCheckedModeBanner: false,
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('en', 'EN'), // English, no
      const Locale('ru', 'RU') // country code
    ],
    defaultTransition: Transition.rightToLeft,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages().getRoutes(),
  )
  );
}


