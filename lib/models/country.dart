import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
    Country();

    String name;
    List topLevelDomain;
    String alpha2Code;
    String alpha3Code;
    List callingCodes;
    String capital;
    List altSpellings;
    String region;
    String subregion;
    num population;
    List latlng;
    String demonym;
    num area;
    double gini;
    List timezones;
    List borders;
    String nativeName;
    String numericCode;
    List currencies;
    List languages;
    Map<String,dynamic> translations;
    String flag;
    List regionalBlocs;
    String cioc;
    
    factory Country.fromJson(Map<String,dynamic> json) => _$CountryFromJson(json);
    Map<String, dynamic> toJson() => _$CountryToJson(this);
    List <Country> getListFromJson(list){
        List<Country> geoPoints = List<Country>.from(list.map((i)=>Country.fromJson(i)).toList());
        return geoPoints;
    }
}
