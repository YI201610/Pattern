import 'package:TableModule/DataSet.dart';
import 'package:TableModule/DataTable.dart';

class TableModule {

  DataTable table;

  TableModule(DataSet dataSet, String tableName) {
    table = dataSet.tables[tableName];
  }

}