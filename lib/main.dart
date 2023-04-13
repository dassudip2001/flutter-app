import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(context) => MyLogin(),
        'dashboard':(context) => Dashboard()
      },

    ),
  );
}

