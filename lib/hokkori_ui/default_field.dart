
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultField extends StatelessWidget {
  final TextEditingController textController;
  final String labelText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? prefixText;
  final TextStyle? prefixStyle;
  const DefaultField({super.key, required this.textController, required this.labelText, this.keyboardType, this.inputFormatters, this.prefixText, this.prefixStyle});

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      controller: textController,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.notoSansJp(
          textStyle: TextStyle(
            color: Colors.grey.shade700,
          ),
        ),
        filled: true, // Relleno activado
        fillColor: Colors.white, // Color de fondo blanco
        enabledBorder: OutlineInputBorder(
          // Borde cuando el campo no está enfocado
          borderRadius: BorderRadius.circular(30), // Bordes circulares
          borderSide: const BorderSide(color: Colors.black, width: 1.0), // Borde negro de 1 píxel
        ),
        focusedBorder: OutlineInputBorder(
          // Borde cuando el campo está enfocado
          borderRadius: BorderRadius.circular(30), // Bordes circulares
          borderSide: const BorderSide(color: Colors.black, width: 1.0), // Borde negro de 1 píxel
        ),
        prefixText: prefixText,
        prefixStyle: prefixStyle,
      ),
    );
  }
}