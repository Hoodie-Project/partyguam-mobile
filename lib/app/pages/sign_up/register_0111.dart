import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/font_style.dart';
import 'package:partyguam/utils/widgets/buttons.dart';
import 'package:partyguam/utils/widgets/inputs.dart';

class Registration011 extends StatelessWidget {
  const Registration011({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가입하기'),
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
              '가입을 축하드려요!\n이메일 정보가 맞나요?',
              style: CustomFontStyle.loginMainTitle,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              '나중에 변경할 수 없어요',
              style: CustomFontStyle.loginSubTitle,
            ),
            const SizedBox(
              height: 40,
            ),
            // TODO: SSO 구현 후 email 값 변경 필요
            const DisabledInputBox(email: 'codeminhasohn@gmail.com'),
            Expanded(
              child: Container(),
            ),
            ElevatedButton(
              onPressed: () {},
              style: longHorizontalStyle,
              child: const Text('네, 맞아요'),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
