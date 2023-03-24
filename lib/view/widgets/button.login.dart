import 'package:flutter/material.dart';
import 'package:mypass/utils/button.style.dart';
import 'package:mypass/utils/global.colors.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: loginButtonStyle,
            onPressed: () {},
            child: Text(
              "Войти",
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}
