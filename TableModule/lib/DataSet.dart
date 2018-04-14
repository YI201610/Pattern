import 'package:TableModule/TableDataGateway.dart';

/*DBテーブルと、対応するTable Data Gatewayの対応づけを定義するMap*/
class DataSet {

  Map<String, TableDataGateway> tables = {
    'Contacts' : new TableDataGateway(),
    'Products' : new TableDataGateway(),
    'RevenueRecognitions' : new TableDataGateway(),
  };

}