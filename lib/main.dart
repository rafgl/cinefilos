import 'package:cinefilos/services/http.dart';
import 'package:cinefilos/services/storage.dart';
import 'package:cinefilos/utils/pages.dart';
import 'package:cinefilos/utils/routes.dart';
import 'package:cinefilos/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// flutter build apk --split-per-abi
// flutter build appbundle
// flutter pub cache repair
// flutter build ios
// ./gradlew signingReport
// gradlew signingReport
// flutter pub run flutter_launcher_icons:main

Future<void> initApp() async {
  await Get.putAsync(() => StorageService().init());
  Get.put(HttpService());

  runApp(const MyApp());
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    initApp();
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      popGesture: false,
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      unknownRoute: AppPages.notFound,
      getPages: AppPages.pages,
      defaultTransition: Transition.fade,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Bitter",
      ),
    );
  }
}
