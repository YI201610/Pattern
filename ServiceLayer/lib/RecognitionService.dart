import 'package:ServiceLayer/ApplicationService.dart';
import 'package:ServiceLayer/Domain/Contract.dart';
import 'package:ServiceLayer/Domain/Money.dart';

class RecognitionService extends ApplicationService {

  calculateRevenueRecognitions(double contractNumber) {

    Contract contract = Contract.readForUpdate(contractNumber);
    contract.calculateRevenueRecognitions();

    this.getEmailGateway().sendMailMessage(contract.getAdministratorEmailAddress(), 'SAMPLE SUBJECT', 'SAMPLE BODY');

    this.getIntegrationGateway().publishRevenueRecognitionCalculation(contract);
  }

  Money recognizedRevenue(double contractNumber, DateTime now) {
    Money result = Contract.read(contractNumber).recognizedRevenue(now);
    return result;
  }

}