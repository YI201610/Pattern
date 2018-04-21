import 'package:ServiceLayer/RecognitionService.dart';
import 'package:ServiceLayer/Domain/Money.dart';

main() {

  RecognitionService service = new RecognitionService();

  double contractNumber = 1234.0;
  service.calculateRevenueRecognitions(contractNumber);

  Money result = service.recognizedRevenue(contractNumber, new DateTime.now());
  print(result);

  print('done.');
}
