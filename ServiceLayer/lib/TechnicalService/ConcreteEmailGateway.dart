import 'package:ServiceLayer/TechnicalService/EmailGateway.dart';

class ConcreteEmailGateway implements EmailGateway {

  @override
  sendMailMessage(String toAddress, String subject, String body) {
    // TODO: implement sendMailMessage
    print('GATEWAY: sendMail...');
    return null;
  }
}