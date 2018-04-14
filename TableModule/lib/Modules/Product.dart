import 'package:TableModule/Modules/TableModule.dart';
import 'package:TableModule/DataSet.dart';

class Product extends TableModule {

  /*コンストラクタ*/
  Product(DataSet dataSet) : super(dataSet, 'Products') {

  }

  String getProductType(String identifier) {

    //Table Data Gatewayを使用して、DB操作...
    table.someMethod(this.toString());

    return 'Sample Product Type';
  }

}