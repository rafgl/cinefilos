import 'package:cinefilos/bindings.dart/home_bindings.dart';
import 'package:cinefilos/bindings.dart/splash_bindings.dart';
import 'package:cinefilos/pages/home.dart';
import 'package:cinefilos/pages/not_found.dart';
import 'package:cinefilos/pages/splash.dart';
import 'package:cinefilos/utils/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static GetPage get notFound => GetPage(
        name: Routes.notFound,
        page: () => const NotFoundPage(),
      );
  static List<GetPage> get pages => [
        GetPage(
          name: Routes.splash,
          page: () => SplashPage(),
          binding: SplashBinding(),
        ),
        GetPage(
          name: Routes.home,
          page: () => HomePage(),
          arguments: 0,
          binding: HomeBinding(),
        ),
      ];
}
