import 'package:DomainModel/Contract.dart';
import 'package:DomainModel/Money.dart';

abstract class RecognitionStrategy {

  Money calculate(Contract contract);

}