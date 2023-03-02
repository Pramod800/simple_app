import 'dart:convert';

import 'package:first_app/models/user_list.dart';
import 'package:http/http.dart' as http;

// class DataProvider with ChangeNotifier {
// List<String> user = ["Pramod", "Timilsina", "ram", "Hari", "Sita"];
// List<String> get userList => _getList;
// List<String> userList = [];
// List<String> dyanamicUserList = [];
// List<String> userModelLIst = [];
// List<UserList> userLists = [];
// Future<List<UserList>> getData() async {
//   final response =
//       await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
//   var data = jsonDecode(response.body);
//   print(data[data]);

//   if (response.statusCode == 200) {
//     for (Map<String, dynamic> index in data) {
//       userLists.add(UserList.fromJson(index));
//     }
//     return userLists;
//   } else {
//     throw Exception("Something went wrong, can't fetch API at the moment.");
//   }
// }
