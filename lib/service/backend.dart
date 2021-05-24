import 'package:dio/dio.dart' as dios ;
import 'package:get_storage/get_storage.dart';
import 'package:global_configuration/global_configuration.dart';
class Backend{
  String baseUrl = GlobalConfiguration().getValue('base_url');
  final GetStorage storage = GetStorage();

  dios.Dio dio;
  Backend(){
    dios.BaseOptions options =new dios.BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10000,
    );
    dio= dios.Dio(
      options
    );
  }

  Future getRestcountriesEu()async{
    print("start");
    var response= await dio.get("/region/europe").catchError((onError){

    });
    if(response!=null){
      print(response.data);
      return response.data;
    }else{
      return [];
    }
  }

}