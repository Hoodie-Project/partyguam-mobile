import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/widgets/app_bar.dart';
import 'package:partyguam/app/screens/sign_up/widgets/components.dart';
import 'package:partyguam/app/screens/sign_up/widgets/text.dart';
import 'package:partyguam/app/theme/colors.dart';

class Login0000 extends StatelessWidget {
  const Login0000({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LoginAppBar(
        title: '로그인',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(
                mainTitle: '파티괌과 함께\n파티에 참여할 준비가 되셨나요?',
                subTitle: '소셜 로그인으로 편하게 이용해보세요',
              ),
              const SocialLoginButton(
                text: '카카오톡 로그인',
                icon: Icon(Icons.abc),
                backgroundColor: Color(0XFFFEE500),
                route: '/sign_up/0111',
              ),
              const SizedBox(height: 8.0),
              SocialLoginButton(
                text: '구글 로그인',
                icon: const Icon(Icons.traffic),
                backgroundColor: AppColors.greyColors.shade50,
                route: '/sign_up/0112',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: TermText(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: SignUpTextButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
