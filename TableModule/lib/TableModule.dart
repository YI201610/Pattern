import 'package:TableModule/DataSet.dart';
import 'package:TableModule/DataTable.dart';

class TableModule {

  /*オブジェクトが取り扱うDBテーブル*/
  DataTable table;

  /*コンストラクタ*/
  TableModule(DataSet dataSet, String tableName) {

    table = dataSet.tables[tableName];

  }

}