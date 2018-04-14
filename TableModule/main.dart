import 'package:TableModule/DataSet.dart';
import 'package:TableModule/Modules/Contract.dart';
import 'package:TableModule/Modules/Product.dart';
import 'package:TableModule/Modules/RevenueRecognition.dart';

main() {

  DataSet someDataSet = new DataSet();

  Contract aContract = new Contract(someDataSet);
  var recognition = aContract.calculateRecognitions('sample identifier');
  print("contact recognition: ${recognition}");

  Product aProduct = new Product(someDataSet);
  var product_type = aProduct.getProductType('sample identifier');
  print("product type: ${product_type}");

  RevenueRecognition aRecognition = new RevenueRecognition(someDataSet);
  aRecognition.someMethod();

  print('done.');
}
