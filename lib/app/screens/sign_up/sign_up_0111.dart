import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/widgets/app_bar.dart';
import 'package:partyguam/app/screens/sign_up/widgets/buttons.dart';
import 'package:partyguam/app/screens/sign_up/widgets/components.dart';
import 'package:partyguam/app/screens/sign_up/widgets/text.dart';

class SignUp0111 extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUp0111({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SignUpAppBar(
        title: '가입하기',
        route: '/sign_up/0112',
        pageCount: '1/4',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 40.0, right: 20.0, bottom: 12.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(
                mainTitle: '가입을 축하드려요!\n이메일 정보가 맞나요?',
                subTitle: '나중에 변경할 수 없어요.',
              ),
              // TODO: SSO 구현 후 email 값 변경 필요
              const EmailConfirmForm(email: 'partguam@gmail.com'),
              const Expanded(
                child: SizedBox(),
              ),
              MainHorizontalButton(
                key: formKey,
                content: '네, 맞아요',
                route: '/sign_up/0112',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
