import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';
import 'package:partyguam/utils/theme/font_style.dart';
import 'package:partyguam/utils/widgets/app_bar.dart';
import 'package:partyguam/utils/widgets/buttons.dart';

class SignUp0111 extends StatelessWidget {
  const SignUp0111({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(
        title: '가입하기',
        pageCount: '1/4',
      ),
      body: Column(
        children: [
          TitleSection(),
          // TODO: SSO 구현 후 email 값 변경 필요
          InputSection(
            email: 'partyguam@gmail.com',
          ),
          ButtonSection(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 199, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '가입을 축하드려요!\n이메일 정보가 맞나요?',
              style: CustomFontStyle.loginMainTitle,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '나중에 변경할 수 없어요',
              style: CustomFontStyle.loginSubTitle,
            ),
          ],
        ),
      ),
    );
  }
}

class InputSection extends StatelessWidget {
  final String email;

  const InputSection({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 404.0),
      child: Container(
        width: 335.0,
        height: 52.0,
        padding: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
          color: AppColors.greyColors.shade100,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Text(
          email,
          style: TextStyle(
            color: AppColors.greyColors.shade500,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/sign_up_0112');
        },
        style: longHorizontalStyle,
        child: const Text('네, 맞아요'),
      ),
    );
  }
}
