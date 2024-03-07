import 'package:flutter/material.dart';
import 'package:partyguam/app/utils/theme/colors.dart';
import 'package:partyguam/app/widgets/common/icons.dart';

class PrimaryInputBox extends StatefulWidget {
  final String hintText;

  // final FormFieldValidator validator;

  const PrimaryInputBox({super.key, required this.hintText});

  @override
  State<PrimaryInputBox> createState() => _PrimaryInputBoxState();
}

class _PrimaryInputBoxState extends State<PrimaryInputBox> {
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
    return Container(
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
                  icon: Icon(CustomIcons.cancel_circled_outline),
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
    );
  }
}
//
// class DisabledInputBox extends StatefulWidget {
//   final String email;
//
//   const DisabledInputBox({super.key, required this.email});
//
//   @override
//   State<DisabledInputBox> createState() => _DisabledInputBoxState();
// }
//
// class _DisabledInputBoxState extends State<DisabledInputBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 335.0,
//       height: 52.0,
//       padding: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 15.0),
//       decoration: BoxDecoration(
//         color: AppColors.greyColors.shade100,
//         borderRadius: const BorderRadius.all(
//           Radius.circular(16),
//         ),
//       ),
//       child: Text(
//         widget.email,
//         style: TextStyle(
//           color: AppColors.greyColors.shade500,
//           fontSize: 16.0,
//           fontWeight: FontWeight.normal,
//         ),
//       ),
//     );
//   }
// }
