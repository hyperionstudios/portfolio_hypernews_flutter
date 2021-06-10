import 'package:flutter/material.dart';

class HyperButton extends StatelessWidget {
  late VoidCallback onTap;
  late String text;
  HyperButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        shape: MaterialStateProperty.all(
          (RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          )),
        ),
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).primaryColor,
        ),
      ),
      onPressed: onTap,
      child: Text(text.toUpperCase()),
    );
  }
}
