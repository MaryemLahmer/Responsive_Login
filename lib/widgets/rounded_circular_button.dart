import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedCircularButton extends StatelessWidget {
  final String text;
  const RoundedCircularButton({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(133, 2, 101, 80),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        onPressed: () {},
        child: Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold)));
  }
}
