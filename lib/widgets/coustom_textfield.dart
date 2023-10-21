import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class CoustomTextField extends StatelessWidget {
  final String? labelText;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;
  final Function(String)? onChanged;
  final FormFieldValidator<String>? onTextValidator;
  final bool obscureText;
  final int maxLines;
  final Function()? onTextFiledOnTap;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final double borderCorner;
  final Color? borderEnableColors;
  final Color? borderFocusColors;
  final Color? fillColor;
  final Color? cursorColor;
  final Color? textColor;
  final Color? hintColor;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;

  CoustomTextField({
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.textEditingController,
    this.onChanged,
    this.obscureText = false,
    this.maxLines = 1,
    this.onTextFiledOnTap,
    required this.onTextValidator,
    this.readOnly = false,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.borderEnableColors,
    this.borderFocusColors,
    this.fillColor,
    this.cursorColor,
    this.textColor,
    this.textAlign,
    this.contentPadding,
    this.fontSize,
    this.fontWeight,
    this.maxLength,
    this.inputFormatters,
    this.hintColor,
    this.borderCorner = 6,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: TextFormField(
        cursorColor: cursorColor ?? HexColor("#008ECE"),
        textAlign: textAlign ?? TextAlign.start,
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        inputFormatters: (inputFormatters != null) ? inputFormatters : null,
        decoration: InputDecoration(
            contentPadding: contentPadding,
            prefixIcon: prefixIcon ?? null,
            suffixIcon: suffixIcon ?? null,
            filled: true,
            isCollapsed: true,
            isDense: true,
            hoverColor: Colors.white,
            fillColor: fillColor ?? Colors.white,
            counterText: "",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderCorner),
              borderSide: BorderSide(color: HexColor("#008ECE"), width: 1.0),
            ),
            focusColor: Colors.transparent,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderCorner),
              borderSide: BorderSide(
                  color: borderFocusColors ?? HexColor("#008ECE"), width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderCorner),
              borderSide: BorderSide(
                color: borderEnableColors ?? HexColor("#999999"),
                width: 1.0,
              ),
            ),
            //labelText: labelText,
            hintText: labelText,
            hintStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                height: 1,
                color: hintColor ?? Colors.black),
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              height: 1,
              fontFamily: 'Roboto',
              decoration: TextDecoration.none,
            ),
            errorStyle: TextStyle(
              color: HexColor("#D32F2E"),
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
            errorMaxLines: 3),
        style: TextStyle(
          color:
              readOnly ? textColor ?? Colors.black : textColor ?? Colors.black,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w300,
          height: 1,
          fontFamily: 'Roboto',
          decoration: TextDecoration.none,
        ),
        keyboardType: keyboardType,
        readOnly: readOnly,
        obscureText: obscureText,
        maxLines: maxLines > 1 ? null : 1,
        maxLength: maxLength ?? null,
        onChanged: onChanged,
        onTap: onTextFiledOnTap,
        controller: textEditingController,
        validator: onTextValidator,
        textInputAction: textInputAction,
      ),
    );
  }
}
