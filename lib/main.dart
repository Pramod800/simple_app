import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/HomePage.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() async {
  // MultiProvider(
  //   providers: [],
  // );
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
