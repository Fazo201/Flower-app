import 'package:flower_app/src/core/constants/context_extension.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
	final TextEditingController controller;
  final String? hintText;
  final Widget? label;
  final bool? obscureText;
	final TextInputType keyboardType;
	final Widget? suffixIcon;
	final VoidCallback? onTap;
	final Widget? prefixIcon;
	final String? Function(String?)? validator;
	final FocusNode? focusNode;
	final String? errorMsg;
	final String? Function(String?)? onChanged;
  final int? minLines;
  final int? maxLines;

	const MyTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText,
		required this.keyboardType,
		this.suffixIcon,
		this.onTap,
    this.minLines,
    this.maxLines,
		this.prefixIcon,
		this.validator,
		this.focusNode,
		this.errorMsg,
		this.onChanged, this.label
  });
	
	@override
	Widget build(BuildContext context) {
		return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText??false,
			keyboardType: keyboardType,
			focusNode: focusNode,
			onTap: onTap,
			textInputAction: TextInputAction.next,
			onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        label: label,
				suffixIcon: suffixIcon,
				prefixIcon: prefixIcon,
				enabledBorder: const OutlineInputBorder(
					// borderRadius: BorderRadius.circular(10),
					borderSide: BorderSide(color: Colors.transparent),
				),
				focusedBorder: OutlineInputBorder(
					// borderRadius: BorderRadius.circular(20),
					borderSide: BorderSide(color: context.theme.colorScheme.secondary),
				),
				fillColor: Colors.grey.shade200,
				filled: true,
				hintText: hintText,
				hintStyle: TextStyle(color: Colors.grey[500]),
				errorText: errorMsg,
			),
    );
	}
}