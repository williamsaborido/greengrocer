import 'package:intl/intl.dart';

class UtilService {
  static String priceToCurrency(double value) {
    var numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(value);
  }
}
