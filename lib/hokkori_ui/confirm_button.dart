import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ConfirmButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0, // Sin elevación
      color: Colors.green, // Color azul
      padding: const EdgeInsets.symmetric(horizontal: 16), // Espaciado horizontal
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Forma circular
      ),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.white, // Ícono blanco
          ),
          const SizedBox(width: 8), // Espacio entre el ícono y el texto
          Text(
            text,
            style: GoogleFonts.notoSansJp(
              textStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
