import 'package:TableDataGateway/TechnicalService/IDataReader.dart';
import 'package:TableDataGateway/TechnicalService/OleDbCommand.dart';
import 'package:TableDataGateway/TechnicalService/DB.dart';

/* DBにおけるPersonテーブルの全ての行をハンドリングするクラス */
class PersonGateway {

  IDataReader findAll() {
    String sql = 'SELECT * FROM person';

    return new OleDbCommand(sql, DB.connection()).executeReader();
  }

  IDataReader findWithFirstName(String firstName) {
    String sql = 'SELECT * FROM person';

    OleDbCommand command = new OleDbCommand(sql, DB.connection());
    command.addParameters('firstName', firstName);

    return command.executeReader();
  }

  IDataReader findWhere(String whereClause) {
    String sql = 'SELECT * FROM person WHERE ${whereClause}';
    return new OleDbCommand(sql, DB.connection()).executeReader();
  }

  BigInt update(String primaryKey, String lastName, String firstName, double numberOfDependents) {

    String sql = 'UPDATE person SET lastname = ?, firstname = ?, numberOfDependents = ? where id = ?';

    OleDbCommand command = new OleDbCommand(sql, DB.connection());
    command.addParameters('key', primaryKey);
    command.addParameters('lastName', lastName);
    command.addParameters('firstName', firstName);
    //command.addParameters('numDep', numberOfDependents);

    return command.executeNonQuery();
  }

  String insert(String lastName, String firstName, double numberOfDependents) {

    String key = _generateNextID();

    String sql = 'INSERT INTO person VALUES (?, ?, ?, ?)';

    OleDbCommand command = new OleDbCommand(sql, DB.connection());
    command.addParameters('key', key);
    command.addParameters('lastName', lastName);
    command.addParameters('firstName', firstName);
    //command.addParameters('numDep', numberOfDependents);

    command.executeNonQuery();

    return key;

  }


  delete(String primaryKey) {
    String sql = 'DELETE FROM person WHERE id = ?';

    OleDbCommand command = new OleDbCommand(sql, DB.connection());
    command.addParameters('key', primaryKey);
    command.executeNonQuery();
  }


  String _generateNextID() {
    return 'next_id_string';
  }


}