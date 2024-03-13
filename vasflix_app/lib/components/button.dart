import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color backgroundColor, foreground;
  final String text;
  final BoxBorder? border;
  final double buttonWidth, buttonHeight;
  final bool? hasIcon, hasBorder;
  final Icon? buttonIcon;
  final double? borderRadius;

  const Button(
      {super.key,
      required this.backgroundColor,
      required this.foreground,
      required this.text,
      required this.buttonHeight,
      required this.buttonWidth,
      this.border,
      this.hasIcon = false,
      this.borderRadius = 10,
      this.hasBorder = false,
      this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: backgroundColor,
          border: hasBorder! ? border : Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius!)),
      child: Text(
        text,
        style: TextStyle(
            color: foreground, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
