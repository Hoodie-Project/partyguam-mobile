import 'package:go_router/go_router.dart';
import 'package:partyguam/app/screens/sign_up/login_0000.dart';
import 'package:partyguam/app/screens/sign_up/sign_up_0111.dart';
import 'package:partyguam/app/screens/sign_up/sign_up_0112.dart';
import 'package:partyguam/app/screens/sign_up/sign_up_0113.dart';
import 'package:partyguam/app/screens/sign_up/sign_up_0114.dart';
import 'package:partyguam/app/screens/sign_up/sign_up_0115.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Login0000(),
    ),
    GoRoute(
      path: '/sign_up/0111',
      builder: (context, state) => SignUp0111(),
    ),
    GoRoute(
      path: '/sign_up/0112',
      builder: (context, state) => SignUp0112(),
    ),
    GoRoute(
      path: '/sign_up/0113',
      builder: (context, state) => SignUp0113(),
    ),
    GoRoute(
      path: '/sign_up/0113',
      builder: (context, state) => SignUp0113(),
    ),
    GoRoute(
      path: '/sign_up/0114',
      builder: (context, state) => const SignUp0114(),
    ),
    GoRoute(
      path: '/sign_up/0115',
      builder: (context, state) => const SignUp0115(),
    ),
  ],
);
