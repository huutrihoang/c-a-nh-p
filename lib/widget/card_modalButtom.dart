// ignore_for_file: file_names, avoid_print, unused_element, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';

// ignore: camel_case_types
class modalButtom extends StatelessWidget {
  modalButtom({Key? key, required this.addTask}) : super(key: key);
  final Function addTask;
  TextEditingController controller = TextEditingController();
  String textValue = '';
  void _handleOnlick() {
    final name = controller.text;
    addTask(name);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                textValue = text;
              },
              decoration: const InputDecoration(
                labelText: 'your task',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('addTask'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
