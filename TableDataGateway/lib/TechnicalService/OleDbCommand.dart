import 'package:TableDataGateway/TechnicalService/DB.dart';
import 'package:TableDataGateway/TechnicalService/IDataReader.dart';

/*データ ソースに対して実行する SQL ステートメントまたはストアド プロシージャを表します。*/
class OleDbCommand {

  DB db;
  String sqlStatement;
  Map<String, String> parameters;

  OleDbCommand(String sql, DB database) {
    this.sqlStatement = sql;
    this.db = database;

    parameters = new Map();
  }

  addParameters(String key, String value){
    parameters[key] = value;
  }

  IDataReader executeReader() {
      return new IDataReader();
  }

  /* 接続に対して Transact-SQL ステートメントを実行し、影響を受けた行数を返します。 */
  BigInt executeNonQuery() {
    return new BigInt.from(1);
  }
}