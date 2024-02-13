import 'package:flutter/material.dart';
import 'package:proyecto_ed/breakpoints/breakpoints.dart';
import 'package:google_fonts/google_fonts.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AddButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    bool showText = breakpointByWidth<bool>(context, defaultSize: true, xsm: false);

    return MaterialButton(
      onPressed: onPressed,
      elevation: 0, // Sin elevación
      color: theme.colorScheme.primary, // Color azul
      padding: const EdgeInsets.symmetric(horizontal: 16), // Espaciado horizontal
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Forma circular
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            color: Colors.white, // Ícono blanco
          ),
          Visibility(
            visible: showText,
            child: Row(
              children: [
                const SizedBox(width: 8),
                Text(
                  text,
                  style: GoogleFonts.notoSansJp(
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
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
          ),
        ],
      ),
    );

  }
}
