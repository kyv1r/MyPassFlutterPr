import "package:flutter/material.dart";

final ButtonStyle loginButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(180, 65),
    backgroundColor: Colors.white,
    elevation: 0,
    textStyle: TextStyle(fontSize: 26),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))));
