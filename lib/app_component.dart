import 'package:angular/angular.dart';

import 'src/currency/currency_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [CurrencyComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in CurrencyComponent.
}
