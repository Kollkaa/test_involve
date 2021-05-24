import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_involve/models/index.dart';

class CountryItem extends StatelessWidget{
  Country country;
  CountryItem(this.country);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        child: SvgPicture.network(country.flag),
      ),
      title: Text("${country.name}"),
      subtitle: Text("${country.subregion} ${country.alpha2Code}"),
    );
  }

}