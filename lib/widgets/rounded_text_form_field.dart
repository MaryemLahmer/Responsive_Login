import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  final IconData prefixedIcon;
  final String hint_text;
  final bool obscureText;
  const RoundedTextFormField(
      {super.key,
      required this.prefixedIcon,
      required this.hint_text,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(67, 71, 77, 0.8),
            spreadRadius: 10,
            blurRadius: 40,
            offset: Offset(0, 12))
      ]),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                  prefixIcon: Icon(prefixedIcon,
                      color: Color.fromARGB(133, 2, 101, 80)),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: hint_text,
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(131, 143, 160, 9),
                  ))),
        ),
      ),
    );
  }
}
