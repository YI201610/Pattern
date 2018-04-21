import 'package:ServiceLayer/TechnicalService/EmailGateway.dart';
import 'package:ServiceLayer/BusinessInfrastructure/IntegrationGateway.dart';
import 'package:ServiceLayer/TechnicalService/ConcreteEmailGateway.dart';
import 'package:ServiceLayer/BusinessInfrastructure/ConcreteIntegrationGateway.dart';

class ApplicationService {

  EmailGateway getEmailGateway() {
    return new ConcreteEmailGateway();
  }

  IntegrationGateway getIntegrationGateway() {
    return new ConcreteIntegrationGateway();
  }

}

