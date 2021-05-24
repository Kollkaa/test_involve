import 'package:get/get.dart';
import 'package:test_involve/moduls/country/bindings/country_binding.dart';
import 'package:test_involve/moduls/country/views/country_view.dart';
import 'package:test_involve/moduls/home/bindings/home_binding.dart';
import 'package:test_involve/moduls/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  var strings;

  AppPages({this.strings});

  getRoutes() {
    return [
      GetPage(
        name: Routes.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: Routes.COUNTRY,
        page: () => CountryView(),
        binding: CountryBinding(),
      ),

    ];
  }
}
