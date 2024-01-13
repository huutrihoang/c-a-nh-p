import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class CardBody extends StatelessWidget {
  CardBody({Key? key, required this.item}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  var item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 137, 144, 158),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Icon(
              Icons.delete_outline,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
