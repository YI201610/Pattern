import 'package:DomainModel/Money.dart';
import 'package:DomainModel/Product.dart';
import 'package:DomainModel/RevenueRecognition.dart';

class Contract {
  int myRevenue;
  BigInt myWhen;

  Product someProduct;
  List<RevenueRecognition> recognitionList = [new RevenueRecognition(), new RevenueRecognition()];

  Contract(int revenue, BigInt when, Product product) {
    this.myRevenue = revenue;
    this.myWhen = when;
    this.someProduct = product;
  }

  Money recognizedRevenue(DateTime date) {

    Money someMoney = new Money();
    return someMoney;
  }

  Money calculateRecognitions() {
    return this.someProduct.calculateRecognitions(this);
  }




}