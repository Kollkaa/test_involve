import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_involve/service/controllers/backend_controller.dart';

class HomeController extends GetxController{
  BackendController backendController =Get.find();
  TextEditingController controller =new TextEditingController();
  RxBool searchLoader=false.obs;
  @override
  void onInit() {}

  @override
  void onClose() {
    searchLoader.close();
  }

  @override
  void onReady() {}

  void onChange(text){
    if(text.length>=3){
      searchLoader.value=true;
      Future.delayed(Duration(seconds: 1),(){
        backendController.searchList.value=[];

        backendController
            .searchList
            .addAll(
            backendController.countryList.where((el) => el.name.toLowerCase().contains(text.toLowerCase()))
        );
        searchLoader.value=false;
      });

    }else if(text.length<3){
      backendController.searchList.value=[];
      backendController
          .searchList
          .addAll(
          backendController.countryList);
    }
    else{
      backendController.searchList.value=[];
      backendController
          .searchList
          .addAll(
          backendController.countryList);
    }

  }

}