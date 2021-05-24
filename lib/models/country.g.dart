// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country()
    ..name = json['name'] as String
    ..topLevelDomain = json['topLevelDomain'] as List
    ..alpha2Code = json['alpha2Code'] as String
    ..alpha3Code = json['alpha3Code'] as String
    ..callingCodes = json['callingCodes'] as List
    ..capital = json['capital'] as String
    ..altSpellings = json['altSpellings'] as List
    ..region = json['region'] as String
    ..subregion = json['subregion'] as String
    ..population = json['population'] as num
    ..latlng = json['latlng'] as List
    ..demonym = json['demonym'] as String
    ..area = json['area'] as num
    ..gini = json['gini']!=null?json['gini']:0.0
    ..timezones = json['timezones'] as List
    ..borders = json['borders'] as List
    ..nativeName = json['nativeName'] as String
    ..numericCode = json['numericCode'] as String
    ..currencies = json['currencies'] as List
    ..languages = json['languages'] as List
    ..translations = json['translations'] as Map<String, dynamic>
    ..flag = json['flag'] as String
    ..regionalBlocs = json['regionalBlocs'] as List
    ..cioc = json['cioc'] as String;
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'topLevelDomain': instance.topLevelDomain,
      'alpha2Code': instance.alpha2Code,
      'alpha3Code': instance.alpha3Code,
      'callingCodes': instance.callingCodes,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'region': instance.region,
      'subregion': instance.subregion,
      'population': instance.population,
      'latlng': instance.latlng,
      'demonym': instance.demonym,
      'area': instance.area,
      'gini': instance.gini,
      'timezones': instance.timezones,
      'borders': instance.borders,
      'nativeName': instance.nativeName,
      'numericCode': instance.numericCode,
      'currencies': instance.currencies,
      'languages': instance.languages,
      'translations': instance.translations,
      'flag': instance.flag,
      'regionalBlocs': instance.regionalBlocs,
      'cioc': instance.cioc
    };
