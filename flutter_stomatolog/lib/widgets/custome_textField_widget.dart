import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      enableSuggestions: false,
      autocorrect: false,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
        hintText: "Šifra",
        contentPadding:  EdgeInsets.symmetric(
            vertical: 0, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            color: Colors.blue,
          ),
        ),
        border: OutlineInputBorder(
          borderSide:  BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}