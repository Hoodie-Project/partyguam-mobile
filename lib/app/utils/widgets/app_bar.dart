import 'package:flutter/material.dart';

// TODO: appBar 변경 및 추가 필요
class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const LoginAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            Navigator.pushNamed(context, '/register_0111');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class SignUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SignUpAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
