import 'package:flutter/material.dart';
import 'package:partyguam/app/widgets/sign_up/custom_widgets.dart';
import 'package:partyguam/utils/theme/app_bar.dart';

class SignUp0112 extends StatelessWidget {
  const SignUp0112({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(title: '가입하기'),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSection(
                mainTitle: '어떻게 불러드리면 될까요?\n닉네임을 입력해주세요',
                subTitle: '닉네임은 나중에 변결할 수 없어요',
              ),
              InputSection(
                hintText: '15자 이내로 입력해주세요 (영문/숫자/한글)',
              ),
              ButtonSection(
                content: '다음',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
