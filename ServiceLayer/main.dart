import 'package:ServiceLayer/Application/RecognitionService.dart';
import 'package:ServiceLayer/Domain/Money.dart';

main() {

  /* UIからの要求に対するサービスオブジェクトを生成する。 */
  RecognitionService service = new RecognitionService();

  /* サービスオブジェクトを介して、サービスを使用する。 */
  double contractNumber = 1234.0;
  service.calculateRevenueRecognitions(contractNumber);

  Money result = service.recognizedRevenue(contractNumber, new DateTime.now());
  print(result);

  print('done.');
}
