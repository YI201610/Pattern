import 'package:ServiceLayer/IntegrationGateway.dart';
import 'package:ServiceLayer/Domain/Contract.dart';

class ConcreteIntegrationGateway implements IntegrationGateway {

  @override
  publishRevenueRecognitionCalculation(Contract contract) {
    // TODO: implement publishRevenueRecognitionCalculation
    print('GATEWAY: publish revenue recognition calculation...');
    return null;
  }
}