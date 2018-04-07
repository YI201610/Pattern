import 'package:DomainModel/Contract.dart';
import 'package:DomainModel/Product.dart';
import 'package:DomainModel/Money.dart';

main() {

  Product someProduct = new Product('aaaaa', 'product-A');
  Contract contract = new Contract(256, new BigInt.from(256), someProduct);
  Money result = contract.calculateRecognitions();

  print(result);
  print('done.');
}