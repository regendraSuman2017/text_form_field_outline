library text_form_field_outline;

import 'package:flutter/material.dart';

class TextFormFieldOutline extends StatelessWidget {
  const TextFormFieldOutline({
    super.key,

    this.controller,
    this.borderRadius,
    this.hintText,
    this.suffix,
    this.inputFormatters,
    this.validator,
    this.enabled,
    this.keyboardType,
    this.onchange,
    this.prefixIcon,
    this.suffixIcon,
    this.onFieldSubmit,
    this.textScaleFactor,
    this.onSaved,
    this.obscureText,
    this.labelText,
    this.color,
    this.contentPadding,
    this.maxLength,
    this.enableInteractiveSelection,
    this.textCapitalization,
    this.autovalidateMode,
    this.textStyle,
    this.maxLines,
    this.overflow,
    this.readOnly,
    this.focusNode,
  });
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final List? inputFormatters;
  final bool? obscureText;
  final bool? enabled;
  final double? borderRadius;
  final Widget? prefixIcon;
  final Function(String)? onchange;
  final Function(String)? onFieldSubmit;
  final Function(String?)? onSaved;
  final double? textScaleFactor;
  final String? labelText;
  final Color? color;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLength;
  final bool? enableInteractiveSelection;
  final TextCapitalization? textCapitalization;
  final AutovalidateMode? autovalidateMode;
  final TextStyle? textStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? readOnly;
  final FocusNode? focusNode;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color == null ? Colors.grey : color!,
              style: BorderStyle.solid,
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius??1.0)),
          ),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color == null ? Colors.grey : color!,)),
          border: const OutlineInputBorder(),
          suffix: suffix,
          suffixIcon: suffixIcon,
          contentPadding:
          contentPadding ?? EdgeInsets.all(MediaQuery.of(context).size.height* 0.025),
          hintText: hintText,
          //hintStyle: AppTextStyle.hindTextFieldText,
          errorMaxLines: 2),
      onFieldSubmitted: onFieldSubmit,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText??false,
      onChanged: onchange,
      enabled: enabled,
      onSaved: onSaved,
      validator: validator,
      maxLength: maxLength,
      enableInteractiveSelection: enableInteractiveSelection,
      textCapitalization: textCapitalization?? TextCapitalization.none,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
      style: textStyle,
      maxLines: maxLines,
      readOnly: readOnly??false,
    );
  }
}


