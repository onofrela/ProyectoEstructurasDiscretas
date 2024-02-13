import 'package:flutter/material.dart';
import 'package:proyecto_ed/breakpoints/breakpoints.dart';

class ShortcutText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const ShortcutText(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {

    double limitChar = breakpointByWidth<double>(context, defaultSize: 250, md: 64, sm: 32, xsm: 15);

    String formattedText = text;

    if(text.length > limitChar){
      formattedText = "${text.substring(0, (limitChar-1).toInt())}...";
    }

    if(style != null){
      return Text(
        formattedText,
        style: style,
      );
    }else{
      return Text(
        formattedText,
      );
    }
  }
}
