import 'package:TableModule/Modules/TableModule.dart';
import 'package:TableModule/DataSet.dart';

class Contract extends TableModule {

  /*コンストラクタ*/
  Contract(DataSet dataSet) : super(dataSet, 'Contacts') {
  }

  int calculateRecognitions(String identifier) {

    //Table Data Gatewayを使用して、DB操作...
    table.someMethod();

    return 200;
  }

}