import 'package:flutter/material.dart';
import 'package:partyguam/utils/theme/color.dart';
import 'package:partyguam/utils/theme/font_style.dart';
import 'package:partyguam/utils/widgets/buttons.dart';

class TitleSection extends StatelessWidget {
  final String mainTitle;
  final String subTitle;

  const TitleSection(
      {super.key, required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainTitle,
          style: CustomFontStyle.loginMainTitle,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 40.0),
          child: Text(
            subTitle,
            style: CustomFontStyle.loginSubTitle,
          ),
        ),
      ],
    );
  }
}

class InputSection extends StatefulWidget {
  final String hintText;

  // final FormFieldValidator validator;

  const InputSection({super.key, required this.hintText});

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
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
                    icon: Icon(Icons.clear),
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

class ButtonSection extends StatelessWidget {
  final String content;

  const ButtonSection({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ElevatedButton(
        onPressed: () {},
        style: longHorizontal,
        child: Text(content),
      ),
    );
  }
}
