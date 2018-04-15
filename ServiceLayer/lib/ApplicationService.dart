import 'package:ServiceLayer/EmailGateway.dart';
import 'package:ServiceLayer/IntegrationGateway.dart';

abstract class ApplicationService {
  EmailGateway getEmailGateway();
  IntegrationGateway getIntegrationGateway();
}
