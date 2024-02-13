import 'package:flutter/material.dart';
import 'package:proyecto_ed/breakpoints/breakpoints.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortcutTitle extends StatelessWidget {
  final String text;
  const ShortcutTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    double limitChar = breakpointByWidth<double>(context, defaultSize: 250, md: 32, sm: 24, xsm: 8);
    double textSize = breakpointByWidth(context, defaultSize: 16, xsm: 12);

    String formattedText = text;

    if(text.length > limitChar){
      formattedText = "${text.substring(0, (limitChar-1).toInt())}...";
    }

    return Text(
      formattedText,
      style: GoogleFonts.notoSansJp(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize)),
    );
  }
}
