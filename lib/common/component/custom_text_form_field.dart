import 'package:flutter/material.dart';
import 'package:flutternamo/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget{
  final bool obsureTest;
  final bool autofocus;
  final String? hintText;
  final String? errorText;
  final ValueChanged<String> onChanged;
  const CustomTextFormField({
    required this.onChanged,
    this.obsureTest =false,
    this.autofocus = false,
    this.hintText,
    this.errorText,
    Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final baseBoarder = OutlineInputBorder(
      borderSide: BorderSide(
        color: INPUT_BORDER_COLOR,
        width: 1.0
      ),
    );

    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      obscureText: obsureTest,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14.0,
        ),
        fillColor: INPUT_BG_COLOR,
        filled: true,
        border: baseBoarder,
        enabledBorder: baseBoarder,
        focusedBorder: baseBoarder.copyWith(
          borderSide: baseBoarder.borderSide.copyWith(
            color: PRIMARY_COLOR
          ),
        ),
      ),
    );
  }
}