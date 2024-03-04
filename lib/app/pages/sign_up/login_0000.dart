import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';
import 'package:partyguam/utils/theme/font_style.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static TextStyle loginMainTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              Navigator.pushNamed(context, '/register_0111');
            },
          )
        ],
      ),
      body: Column(
        children: [
          Text(
            '파티괌과 함께 \n파티에 참여할 준비가 되셨나요?',
            style: CustomFontStyle.loginMainTitle,
          ),
          Text(
            '소셜로그인으로 편하게 이용해보세요',
            style: CustomFontStyle.loginSubTitle,
          ),
          RichText(
            text: TextSpan(
              text: '소셜 로그인 가입 시 ',
              style: TextStyle(
                color: AppColors.greyColors.shade700,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
              children: [
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
          RichText(
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
          )
        ],
      ),
    );
  }
}
