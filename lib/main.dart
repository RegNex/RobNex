import 'package:flutter/material.dart';

import 'login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RobNex',
      theme: ThemeData.light(),
      home: const LoginView(),
    );
  }
}
