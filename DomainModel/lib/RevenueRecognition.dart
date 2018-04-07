import 'package:DomainModel/Money.dart';

class RevenueRecognition {

  Money amount;
  DateTime recognitionDate;

  bool isRecognizableBy(DateTime date) {
    return true;
  }

}