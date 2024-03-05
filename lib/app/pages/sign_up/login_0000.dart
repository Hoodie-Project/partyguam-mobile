import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';
import 'package:partyguam/utils/theme/font_style.dart';
import 'package:partyguam/utils/widgets/app_bar.dart';
import 'package:partyguam/utils/widgets/buttons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(
        title: '로그인',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              '파티괌과 함께 \n파티에 참여할 준비가 되셨나요?',
              style: CustomFontStyle.loginMainTitle,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              '소셜로그인으로 편하게 이용해보세요',
              style: CustomFontStyle.loginSubTitle,
            ),
            const SizedBox(
              height: 40,
            ),
            // TODO: icon 변경 필요
            const SocialLoginButton(
              text: '카카오톡 로그인',
              icon: Icon(Icons.abc),
              backgroundColor: Color(0XFFFEE500),
              route: '/register_0111',
            ),
            const SizedBox(
              height: 8,
            ),
            SocialLoginButton(
              text: '구글 로그인',
              icon: const Icon(Icons.traffic),
              backgroundColor: AppColors.greyColors.shade50,
              route: '/register_0111',
            ),
            const SizedBox(
              height: 32,
            ),
            RichText(
              text: TextSpan(
                text: '소셜 로그인 가입 시 ',
                style: TextStyle(
                  color: AppColors.greyColors.shade700,
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                ),
                children: const [
                  TextSpan(
                    text: '이용약관 개인정보처리방침 전자금융거래약관 \n결제/환불약관',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: '에 동의한 것으로 간주합니다.')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: '회원가입 ',
                  style: TextStyle(
                    color: AppColors.greyColors.shade500,
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: ' | ',
                      style: TextStyle(
                        color: AppColors.greyColors.shade200,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: ' 문의하기',
                      style: TextStyle(
                        color: AppColors.greyColors.shade500,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
