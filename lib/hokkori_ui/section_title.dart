import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: GoogleFonts.notoSansJp(
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}