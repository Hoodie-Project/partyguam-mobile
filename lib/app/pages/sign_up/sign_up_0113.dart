import 'package:flutter/material.dart';
import 'package:partyguam/app/widgets/common/app_bars.dart';
import 'package:partyguam/app/widgets/sign_up/components.dart';

class SignUp0113 extends StatelessWidget {
  const SignUp0113({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(title: '가입하기', pageCount: '3/4'),
      body: Column(
        children: [
          TitleSection(
              mainTitle: '***님의\n생년월일을 알려주세요',
              subTitle: '프로필에서 노출여부를 설정 할 수 있어요'),
          DateSection(),
          ButtonSection(content: '다음', routeName: 'sign_up/0114')
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
