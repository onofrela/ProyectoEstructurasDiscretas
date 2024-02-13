import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionText extends StatelessWidget {
  final String text;
  const SelectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: GoogleFonts.notoSansJp(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}