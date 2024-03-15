import 'package:flutter/material.dart';
import 'package:partyguam/app/screens/sign_up/widgets/app_bar.dart';
import 'package:partyguam/app/screens/sign_up/widgets/buttons.dart';
import 'package:partyguam/app/screens/sign_up/widgets/components.dart';
import 'package:partyguam/app/screens/sign_up/widgets/text.dart';

class SignUp0112 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUp0112({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SignUpAppBar(
        title: '가입하기',
        route: '/sign_up/0113',
        pageCount: '2/4',
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 12.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                mainTitle: '어떻게 불러드리면 될까요?\n닉네임을 입력해 주세요',
                subTitle: '닉네임은 나중에 변경할 수 없어요.',
              ),
              NickNameForm(
                hintText: '15자 이내로 입력해 주세요. (영문/숫자/한글)',
              ),
              Expanded(
                child: SizedBox(),
              ),
              MainHorizontalButton(
                content: '다음',
                route: '/sign_up/0113',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // context.push('/sign_up/0113s');
                    print('validated!');
                  }
                  print('error!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
