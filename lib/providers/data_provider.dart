import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class DataProvider with ChangeNotifier {
  List<String> user = ["Pramod", "Timilsina", "ram", "Hari", "Sita"];
  // List<String> get userList => _getList;
  List<String> userList = [];
  List<String> dyanamicUserList = [];
  List<String> userModelLIst = [];
}
