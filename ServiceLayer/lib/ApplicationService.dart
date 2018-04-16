import 'package:ServiceLayer/EmailGateway.dart';
import 'package:ServiceLayer/IntegrationGateway.dart';
import 'package:ServiceLayer/ConcreteEmailGateway.dart';
import 'package:ServiceLayer/ConcreteIntegrationGateway.dart';

class ApplicationService {

  EmailGateway getEmailGateway() {
    return new ConcreteEmailGateway();
  }

  IntegrationGateway getIntegrationGateway() {
    return new ConcreteIntegrationGateway();
  }

}

