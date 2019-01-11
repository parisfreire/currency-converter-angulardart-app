// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return Currency(
      json['base'] as String,
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      (json['rates'] as Map<String, dynamic>)
          ?.map((k, e) => MapEntry(k, (e as num)?.toDouble())));
}

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'base': instance.base,
      'date': instance.date?.toIso8601String(),
      'rates': instance.rates
    };
