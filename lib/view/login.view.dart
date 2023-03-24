import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mypass/first.screen.view.dart';
import 'package:mypass/masterapp.view.dart';
import 'package:mypass/utils/button.style.dart';
import 'package:mypass/utils/global.colors.dart';
import 'package:mypass/view/widgets/button.login.dart';
import 'package:mypass/view/widgets/pass.text.global.dart';
import 'package:mypass/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: GlobalColors.mainColor,
      ),
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(30.0)),
            Text(
              'MyPass',
              style: TextStyle(fontSize: 40, color: GlobalColors.textColor),
            ),
            const Divider(
              height: 5,
              thickness: 2.5,
              indent: 70,
              endIndent: 70,
              color: Colors.white,
            ),
            Text(
              'Пропуск в вашем смартфоне',
              style: TextStyle(fontSize: 15, color: GlobalColors.textColor),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0, left: 50, right: 50),
              child: const TextFormGlobal(),
            ),
            const Divider(
              height: 40,
              thickness: 2.5,
              indent: 70,
              endIndent: 70,
              color: Colors.white,
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: const PassText(),
            ),
            Align(
              alignment: Alignment.centerRight,
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MasterAppView()));
                },
                child: Text(
                  "Войти",
                  style: TextStyle(color: Colors.black),
                ),
                style: loginButtonStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
