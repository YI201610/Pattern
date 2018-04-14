import 'package:TableModule/DataSet.dart';
import 'package:TableModule/TableDataGateway.dart';

class TableModule {

  /*オブジェクトが取り扱うDBテーブル*/
  TableDataGateway table;

  /*コンストラクタ*/
  TableModule(DataSet dataSet, String tableName) {

    table = dataSet.tables[tableName];

  }

}