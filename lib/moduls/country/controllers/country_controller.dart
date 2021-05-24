import 'package:get/get.dart';
import 'package:test_involve/models/country.dart';

class CountryController extends GetxController{
  Country country;
  @override
  void onInit() {
    country=Get.arguments;
  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }
}