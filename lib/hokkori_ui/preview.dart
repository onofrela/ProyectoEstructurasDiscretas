import 'package:flutter/material.dart';
import 'package:proyecto_ed/hokkori_ui/section_title.dart';

class Preview extends StatelessWidget {
  final Color color;
  final IconData icon;
  
  const Preview({Key? key, required this.color, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Vista Previa'),
        const SizedBox(height: 8,),
        Container(
          height: 360,
          width: 360,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Center(
            child: Container(
              width: 288, // Ancho del círculo
              height: 288, // Alto del círculo
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Forma del contenedor
                color: color, // Color del círculo
              ),
              child: Center(
                child: Icon(
                  icon, // Ícono que deseas mostrar
                  color: Colors.white, // Color del ícono
                  size: 160, // Tamaño del ícono
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
