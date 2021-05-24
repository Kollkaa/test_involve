import 'package:get/get.dart';
import 'package:test_involve/models/country.dart';
import '../backend.dart';
class BackendController extends GetxController{
  Backend backend =new Backend();
  RxList<dynamic> countryList=[].obs;
  RxList<dynamic> searchList=[].obs;

  RxBool loader = false.obs;
  @override
  void onInit() {
    getCountryList();
  }

  @override
  void onClose() {}

  @override
  void onReady() {
    countryList.close();
    loader.close();
  }

  Future getCountryList()async{
    loader.value=true;
    var response=await backend.getRestcountriesEu();
    print(response.length);
    if(response.length!=0){
      countryList.addAll(Country().getListFromJson(response));
      searchList.addAll(countryList);
      loader.value=false;
    }else{
      loader.value=false;
    }
  }
}