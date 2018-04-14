import 'package:TableModule/Modules/TableModule.dart';
import 'package:TableModule/DataSet.dart';

class RevenueRecognition extends TableModule {

  RevenueRecognition(DataSet dataSet) : super(dataSet, 'RevenueRecognitions') {

  }

  someMethod() {

    //Table Data Gatewayを使用して、DB操作...
    table.someMethod();


  }
}