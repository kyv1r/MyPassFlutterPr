import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MasterAppView extends StatefulWidget {
  const MasterAppView({super.key});

  @override
  State<MasterAppView> createState() => _MasterAppViewState();
}

class _MasterAppViewState extends State<MasterAppView> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    Text(
      "Пропуск",
      style: TextStyle(fontSize: 30),
    ),
    Text(
      "Пися",
      style: TextStyle(fontSize: 30),
    ),
    Text(
      "Даня педик",
      style: TextStyle(fontSize: 30),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetList[myIndex]),
      appBar: AppBar(
        title: Text(
          "Пропуск",
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500)),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Пропуск',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_customize), label: 'Кастомизации'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Настройки'),
          ]),
    );
  }
}
