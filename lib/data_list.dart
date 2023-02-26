import 'package:flutter/material.dart';

class DataListView extends StatefulWidget {
  const DataListView({Key? key}) : super(key: key);

  // final DataProvider? provider;

  @override
  State<DataListView> createState() => _DataListViewState();
}

class _DataListViewState extends State<DataListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListTile(
            leading: const Icon(Icons.add),
            title: const Text(
              'GFG title',
              textScaleFactor: 1.5,
            ),
            trailing: const Icon(Icons.done),
            subtitle: const Text('This is subtitle'),
            selected: true,
            onTap: () {});
      },
    );
  }
}
