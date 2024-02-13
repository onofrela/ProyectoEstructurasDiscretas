import 'package:flutter/material.dart';
import 'package:proyecto_ed/hokkori_ui/cancel_button.dart';
import 'package:proyecto_ed/hokkori_ui/section_title.dart';
import 'package:google_fonts/google_fonts.dart';

class WarningDialog extends StatelessWidget {
  final String title;
  final String description;
  const WarningDialog({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: SectionTitle(title),
      content: SizedBox(
        height: 180,
        width: 180,
        child: Center(
          child: Text(
            description,
            style: GoogleFonts.notoSansJp(),
          ),
        ),
      ),
      actions: <Widget>[
        CancelButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: 'Cancelar',
        ),
      ],
    );
  }
}