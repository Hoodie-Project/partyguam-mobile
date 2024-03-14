import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/login_0000.dart';
import 'package:partyguam/app/screens/sign_up/sign_up_0114.dart';

import 'app/screens/sign_up/sign_up_0111.dart';
import 'app/screens/sign_up/sign_up_0112.dart';
import 'app/screens/sign_up/sign_up_0113.dart';
import 'app/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const Login0000(),
      initialRoute: '/',
      routes: {
        '/login/0000': (context) => const Login0000(),
        '/sign_up/0111': (context) => const SignUp0111(),
        '/sign_up/0112': (context) => const SignUp0112(),
        '/sign_up/0113': (context) => const SignUp0113(),
        '/sign_up/0114': (context) => const SignUp0114(),
      },
    );
  }
}
