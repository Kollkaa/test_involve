import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import "package:latlong/latlong.dart" as latLng;
import 'package:test_involve/moduls/country/controllers/country_controller.dart';

class CountryView extends StatelessWidget{
  CountryController countryController =Get.put(CountryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${countryController.country.name}"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: Get.height*0.8,
            width: Get.width,
            child: FlutterMap(
              options: MapOptions(
                center: latLng.LatLng(countryController.country.latlng[0],countryController.country.latlng[1]),
                zoom: 6.0,
              ),
              layers: [
                TileLayerOptions(
                    urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 40.0,
                      height: 40.0,
                      point: latLng.LatLng(countryController.country.latlng[0],countryController.country.latlng[1]),
                      builder: (ctx) =>
                          Container(
                            child: SvgPicture.network(countryController.country.flag),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Text("${countryController.country.numericCode} ${countryController.country.borders}"),
            subtitle: Text("${countryController.country.currencies}"),
          )
        ],
      ),
    );
  }


}