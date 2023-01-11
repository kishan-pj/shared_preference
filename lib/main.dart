
import 'package:flutter/material.dart';
import 'package:sharedpreference/app.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter for class",
      initialRoute: '/',
      routes: {
        '/':((context) => const SharedPreferenceScreen()),
      },

    )
  );
}