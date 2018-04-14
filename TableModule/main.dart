import 'package:TableModule/DataSet.dart';
import 'package:TableModule/Contract.dart';

main() {

  DataSet someDataSet = new DataSet();
  Contract a = new Contract(someDataSet);

  print(a);

  print('done.');
}
