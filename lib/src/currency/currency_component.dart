import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:currency_converter_angulardart_app/src/currency/model/currency.dart';

import 'services/currency_service.dart';

@Component(
  selector: 'currency',
  styleUrls: ['currency_component.css'],
  templateUrl: 'currency_component.html',
  directives: [
    MaterialDropdownSelectComponent,
    materialInputDirectives,
    MaterialTabComponent,
    MaterialTabPanelComponent,
    NgFor,
    NgIf,
  ],
  providers: [ClassProvider(CurrencyService), materialProviders],
)
class CurrencyComponent implements OnInit {

  final CurrencyService _currencyService;

  static const String TEXT_DEFAULT = "Select your currency";
  static const String BASE_DEFAULT = "EUR";

  Currency currency;

  String selectedRateName = TEXT_DEFAULT;
  String selectedBase = BASE_DEFAULT;

  static List<String> baseList = ['EUR', 'USD', 'GBP'];

  CurrencyComponent(this._currencyService);

  /// Single Selection Model
   SelectionModel<String> singleSelectModel = SelectionModel.single(selected: BASE_DEFAULT);

  @override
  Future<void> ngOnInit() async{
    await getCurrencies(BASE_DEFAULT);

    singleSelectModel.selectionChanges.listen((e) {
     selectedBase = e.first.added.first;
     getCurrencies(selectedBase);
    });
  }

  void getCurrencies(String selectedBase){
    this._currencyService.getCurrencies(selectedBase).then((result){
      currency = result;
    });
  }

  double getSelectedRateValue(){
    double selectedRateValue;

    if(selectedRateName != TEXT_DEFAULT){
      selectedRateValue = currency.rates["$selectedRateName"];
    }
      
    return selectedRateValue;
  }
}
