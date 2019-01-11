import 'package:json_annotation/json_annotation.dart';


part 'currency.g.dart';

@JsonSerializable()
class Currency {

  String base;
  DateTime date;
  Map<String, double> rates;

  Currency.empty();

  Currency(this.base, this.date, this.rates);

  

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}