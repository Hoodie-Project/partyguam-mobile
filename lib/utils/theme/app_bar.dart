import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class SignUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SignUpAppBar({super.key,  required this.title });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'SUIT',
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
