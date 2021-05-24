import 'package:get/get.dart';
import 'package:test_involve/moduls/country/controllers/country_controller.dart';

class CountryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountryController>(
      () => CountryController(),
    );
  }
}
