import 'package:flutter/material.dart';

class DefaultInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool hidden;
  final TextEditingController controller;

  const DefaultInput({
    super.key,
    required this.labelText,
    required this.hidden,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: TextFormField(
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        controller: controller,
        obscureText: hidden,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 6, 51, 2),
            fontSize: 18,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 3, 48, 1),
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
