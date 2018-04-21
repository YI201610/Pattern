import 'package:TableDataGateway/Domain/PersonGateway.dart';
import 'package:TableDataGateway/TechnicalService/IDataReader.dart';

main() {

  PersonGateway person = new PersonGateway();

  String primaryKey = person.insert('some last name', 'some first name ', 5.0);
  print(primaryKey);

  IDataReader result = person.findWithFirstName('hoge first name');
  print(result);

  BigInt resultNumber = person.update('some key1', 'new last name', 'new first name', 10.2);
  print(resultNumber);

  person.delete(primaryKey);

  print('done.');
}
