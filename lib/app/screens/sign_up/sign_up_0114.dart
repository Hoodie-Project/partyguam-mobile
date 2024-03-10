import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/widgets/app_bar.dart';
import 'package:partyguam/app/screens/sign_up/widgets/buttons.dart';
import 'package:partyguam/app/screens/sign_up/widgets/text.dart';

class SignUp0114 extends StatelessWidget {
  const SignUp0114({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(
        title: '가입하기',
        pageCount: '4/4',
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                mainTitle: '성별은\n어떻게 되시나요?',
                subTitle: '프로필에서 노출여부를 설정 할 수 있어요',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SquareButton(content: '남자'),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: SquareButton(content: '여자'),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(),
              ),
              MainHorizontalButton(
                content: '다음',
                route: '/sign_up/0116',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
