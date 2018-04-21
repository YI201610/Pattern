import 'package:ServiceLayer/Domain/Money.dart';

class Contract {

  /* factory method */
  static Contract readForUpdate(double contractNumber) {
    return new Contract();
  }

  static Contract read(double contractNumber) {
    return new Contract();
  }

  calculateRevenueRecognitions() {
    print('CONTRACT: calculate revenueRecognition');
  }

  String getAdministratorEmailAddress() {
    return 'admin@sample-domain.com';
  }

  Money recognizedRevenue(DateTime asOf) {
    return new Money();
  }
}