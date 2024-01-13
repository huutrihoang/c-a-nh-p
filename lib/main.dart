// ignore_for_file: unused_element, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:myapp/modal/items.dart';
import 'package:myapp/widget/card_modalButtom.dart';
import 'widget/card_body_widget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  void _handleaddtask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
    print(items);
  }

  @override
  Widget build(BuildContext context) {
    /// hello tri
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ToDoList', style: TextStyle(fontSize: 40)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items.map((item) => CardBody(item: item)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.grey,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return modalButtom(addTask: _handleaddtask);
            },
          );
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
