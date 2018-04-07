import 'package:DomainModel/Money.dart';
import 'package:DomainModel/Contract.dart';
import 'package:DomainModel/RecognitionStrategy.dart';
import 'package:DomainModel/CompleteRecognitionStrategy.dart';
import 'package:DomainModel/ThreeWayRecognitionStrategy.dart';

class Product {

  String productIdentifier;
  String productName;

  RecognitionStrategy strategy;


  Product(String identifier, String name) {
    this.productIdentifier = identifier;
    this.productName = name;
  }


  Money calculateRecognitions(Contract contract) {

    if(contract.someProduct == "aaa") {
      this.strategy = new CompleteRecognitionStrategy();
    }else{
      this.strategy = new ThreeWayRecognitionStrategy();
    }

   return strategy.calculate(contract);
  }

}