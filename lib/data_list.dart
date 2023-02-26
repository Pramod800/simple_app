import 'package:first_app/providers/data_provider.dart';
import 'package:flutter/material.dart';

class DataListView extends StatelessWidget {
  const DataListView({Key? key, required this.provider}) : super(key: key);

  final DataProvider provider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Proovider"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: 
              ListView.builder(
                itemCount: provider!.getUsernames[index],itemBuilder:((context, index) {
                return Text($itemBuilder)
              }) ))
            ],

          ),
        ));
  }
}
