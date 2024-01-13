// ignore_for_file: file_names, avoid_print, unused_element, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';

class ModalButtom extends StatefulWidget {
  const ModalButtom({Key? key, required this.addTask}) : super(key: key);
  final Function addTask;

  @override
  State<ModalButtom> createState() => _ModalButtomState();
}

class _ModalButtomState extends State<ModalButtom> {
  final TextEditingController controller = TextEditingController();

  String textValue = '';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _handleOnlick() {
    final name = controller.text;
    widget.addTask(name);
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
              controller: controller,
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
                onPressed: _handleOnlick,
                child: const Text('addTask'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
