import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HyperInputText extends StatelessWidget {
  late final String hintText;
  late final String labelText;
  late final TextEditingController controller;

  HyperInputText(
      {required this.hintText,
      required this.labelText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.75),
          filled: true,
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          border: _border(context),
          focusedBorder: _border(context, border: 2),
          errorBorder: _border(context),
          enabledBorder: _border(context),
        ),
      ),
    );
  }

  _border(BuildContext context, {double? border}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(18),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
        width: border ?? 1,
      ),
    );
  }
}
