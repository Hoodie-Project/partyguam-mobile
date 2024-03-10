import 'package:flutter/material.dart';
import 'package:partyguam/app/theme/colors.dart';

/// Login0000
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
    return Expanded(
      child: Container(
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

class EmailConfirmForm extends StatefulWidget {
  final String email;

  const EmailConfirmForm({super.key, required this.email});

  @override
  State<EmailConfirmForm> createState() => _EmailConfirmFormState();
}

class _EmailConfirmFormState extends State<EmailConfirmForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.0,
      height: 52.0,
      padding: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 15.0),
      decoration: BoxDecoration(
        color: AppColors.greyColors.shade100,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
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
    );
  }
}

class SocialLoginButton extends StatefulWidget {
  final String text;
  final Icon icon;
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
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, widget.route);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(335, 52),
        elevation: 1,
        backgroundColor: widget.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        textStyle: TextStyle(
          color: AppColors.greyColors.shade700,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        alignment: Alignment.centerLeft,
        // padding: EdgeInsets.only(left: 20.0),
      ),
      icon: widget.icon,
      label: Text(widget.text),
    );
  }
}
