import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partyguam/app/theme/colors.dart';

/// Login0000
class SocialLoginButton extends StatefulWidget {
  final String text;
  final Widget icon;
  final Color backgroundColor;
  final String route;

  const SocialLoginButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.backgroundColor,
      required this.route});

  @override
  State<SocialLoginButton> createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          context.push(widget.route);
        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: widget.backgroundColor,
          elevation: 1,
          foregroundColor: AppColors.greyColors.shade700,
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          minimumSize: const Size(
            335.0,
            52.0,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          textStyle: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        icon: widget.icon,
        label: Text(widget.text),
      ),
    );
  }
}

class TermText extends StatelessWidget {
  const TermText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            '회원가입',
            style: TextStyle(
              color: AppColors.greyColors.shade500,
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Text(
          ' | ',
          style: TextStyle(
            color: AppColors.greyColors.shade200,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            '문의하기',
            style: TextStyle(
              color: AppColors.greyColors.shade500,
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}

/// SignUp0111
class EmailConfirmForm extends StatefulWidget {
  final String email;

  const EmailConfirmForm({super.key, required this.email});

  @override
  State<EmailConfirmForm> createState() => _EmailConfirmFormState();
}

class _EmailConfirmFormState extends State<EmailConfirmForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: 52.0,
        padding: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
          color: AppColors.greyColors.shade100,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Text(
          widget.email,
          style: TextStyle(
            color: AppColors.greyColors.shade500,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

/// SignUp0112
class NickNameForm extends StatefulWidget {
  final String hintText;

// final FormFieldValidator validator;

  const NickNameForm({super.key, required this.hintText});

  @override
  State<NickNameForm> createState() => _NickNameFormState();
}

class _NickNameFormState extends State<NickNameForm> {
  final controller = TextEditingController();
  bool _showClearIcon = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(_updateClearIconVisibility);
  }

  @override
  void dispose() {
    controller.removeListener(_updateClearIconVisibility);
    controller.dispose();
    super.dispose();
  }

  void _updateClearIconVisibility() {
    setState(() {
      _showClearIcon = controller.text.isNotEmpty;
    });
  }

  void _clearText() {
    setState(() {
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: 335,
        height: 52,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 10.0),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: AppColors.greyColors.shade400,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
            suffixIcon: _showClearIcon
                ? IconButton(
                    // TODO: CustomIcons 설정
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        _clearText();
                      });
                    },
                  )
                : null,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.greyColors.shade200,
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryLightColors,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.systemColors.shade100,
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          // TODO: Validator 생성 필요
          // validator: widget.validator,
        ),
      ),
    );
  }
}
