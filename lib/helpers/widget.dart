import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  Icon icon;
  bool obscureText;
  Function onChange;

  CustomTextField(
      {Key key, this.hint, this.icon, this.obscureText, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscureText: obscureText,
      validator: (value) {
        if (value.isEmpty) {
          return 'يجب ان تحتوي علس قيمة';
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hint,
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.primaryColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  String text;
  Function onClick;

  MyButton({Key key, this.text, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: GoogleFonts.cairo(
          color: Colors.white,
        ),
      ),
      color: AppTheme.primaryColor,
      onPressed: onClick,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    );
  }
}
