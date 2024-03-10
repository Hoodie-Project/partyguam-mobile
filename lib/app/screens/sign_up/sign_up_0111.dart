import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/widgets/app_bar.dart';
import 'package:partyguam/app/screens/sign_up/widgets/components.dart';

class SignUp0111 extends StatelessWidget {
  const SignUp0111({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(
        title: '가입하기',
        pageCount: '1/4',
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSection(
                mainTitle: '가입을 축하드려요!\n이메일 정보가 맞나요?',
                subTitle: '나중에 변경할 수 없어요',
              ),
              // TODO: SSO 구현 후 email 값 변경 필요
              DisabledInputSection(email: 'partguam@gmail.com'),
              Expanded(
                child: SizedBox(),
              ),
              ButtonSection(
                content: '네, 맞아요',
                routeName: '/sign_up/0112',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
