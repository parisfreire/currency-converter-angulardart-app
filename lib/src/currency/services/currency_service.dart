import 'dart:async';
import 'dart:convert';
import 'package:angular/core.dart';
import 'package:currency_converter_angulardart_app/src/currency/model/currency.dart';

import 'package:http/http.dart';

@Injectable()
class CurrencyService {

  final Client _http;
  static const API_URL = "https://api.exchangeratesapi.io";

  CurrencyService(this._http);

  Future<Currency> getCurrencies(String selectedBase) async{

  Response response = await _http.get("$API_URL/latest?base=$selectedBase");
    Currency currency = Currency.fromJson(json.decode(response.body));
    return currency;
     
  }
}
