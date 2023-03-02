// import 'dart:convert';
// import 'package:http/http.dart' as http;

// import 'package:first_app/providers/data_provider.dart';
// import 'package:flutter/material.dart';

// import 'models/user_list.dart';

// class DataListView extends StatefulWidget {
//   const DataListView({Key? key}) : super(key: key);

//   // final DataProvider? provider;

//   @override
//   State<DataListView> createState() => _DataListViewState();
// }

// class _DataListViewState extends State<DataListView> {
//   List<UserList> userDetails = [];

//   @override
//   void initState() {
//     super.initState();
//     userDetails= getData() ;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//                 future: getData(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return ListView.builder(
//                       itemCount: userDetails.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                             leading: const Icon(Icons.add),
//                             title: Text(
//                               ' $userDetails.[index].page',
//                               textScaleFactor: 1.5,
//                             ),
//                             trailing: const Icon(Icons.done),
//                             subtitle: Text('$userDetails.[index].data.email'),
//                             selected: true,
//                             onTap: () {});
//                       },
//                     );
//                   } else if (snapshot.hasError) {
//                     return Center(
//                         child: Text(
//                             "Following Error occured : ${snapshot.error}"));
//                   } else {
//                     return const Center(
//                         child: CircularProgressIndicator(
//                             color: Color.fromARGB(255, 12, 90, 82)));
//                   }
//                 }),
//           ),
//         ],
//       ),
//     );
  

  
// }
