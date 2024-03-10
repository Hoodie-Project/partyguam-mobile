import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/widgets/app_bar.dart';
import 'package:partyguam/app/screens/sign_up/widgets/buttons.dart';
import 'package:partyguam/app/screens/sign_up/widgets/text.dart';

class SignUp0113 extends StatelessWidget {
  const SignUp0113({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(title: '가입하기', pageCount: '3/4'),
      body: Column(
        children: [
          TitleText(
              mainTitle: '***님의\n생년월일을 알려주세요',
              subTitle: '프로필에서 노출여부를 설정 할 수 있어요'),
          DateSection(),
          MainHorizontalButton(content: '다음', route: '/sign_up/0114')
        ],
      ),
    );
  }
}

class DateSection extends StatelessWidget {
  const DateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
