import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_involve/moduls/home/components/country.dart';
import 'package:test_involve/moduls/home/controllers/home_controller.dart';
import 'package:test_involve/routes/app_pages.dart';
import 'package:test_involve/service/controllers/backend_controller.dart';

class HomeView extends StatelessWidget{
  HomeController homeController = Get.put(HomeController());
  BackendController backendController =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(),
        elevation: 0,
        toolbarHeight: 1,
      ),
      backgroundColor: Colors.white,
      body: Obx(
              ()=>backendController.loader.value?Center(
                child: CircularProgressIndicator(),
              ):backendController.countryList.length==0?
              Center(
                child: FlatButton(
                  child: Text(
                    "reset load data"
                  ),
                  onPressed: (){
                    backendController.getCountryList();
                  },
                ),
              )
                  :Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "search"
                    ),
                    controller: homeController.controller,
                    onChanged: homeController.onChange,
                  ),
                  homeController.searchLoader.value?
                      Container(
                        height: Get.height/2,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                      :Expanded(
                    child: ListView.builder(
                      itemCount: backendController.searchList.length,
                      itemBuilder: (c,i){
                        return GestureDetector(
                          child: CountryItem(backendController.searchList[i]),
                          onTap: (){
                            Get.toNamed(Routes.COUNTRY,arguments:backendController.searchList[i] );
                          },
                        );
                      },
                    ),
                  )

                ],
              )
      ),
    );
  }


}