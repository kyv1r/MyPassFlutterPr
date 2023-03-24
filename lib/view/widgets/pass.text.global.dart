import 'package:flutter/material.dart';

class PassText extends StatelessWidget {
  const PassText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          hintText: "Password",
          prefixIcon: Icon(Icons.person),
          iconColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(24))),
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255), width: 0.0),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ))),
    );
  }
}
