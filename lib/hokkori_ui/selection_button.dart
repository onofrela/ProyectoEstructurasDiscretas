import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget body;
  final String text;
  const SelectionButton({super.key, required this.onPressed, required this.body, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0, // Sin elevación
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16), // Espaciado horizontal
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Forma circular
        side: const BorderSide(
          color: Colors.black, // Color del borde
          width: 1.0, // Ancho del borde (1 píxel)
        ),
      ),
      child: Row(
        children: [
          body,
          const SizedBox(width: 8), // Espacio entre el ícono y el texto
          Text(
            text,
            style: GoogleFonts.notoSansJp(),
          ),
          const SizedBox(width: 8), // Espacio entre el texto y el círculo derecho
          Container(
            height: 30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // Círculo derecho de color azul
            ),
          ),
        ],
      ),
    );
  }
}
