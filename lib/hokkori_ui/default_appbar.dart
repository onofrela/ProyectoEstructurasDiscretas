import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions; // Utiliza el operador "?" para hacerlo opcional
  const DefaultAppBar({super.key, required this.title, this.actions}); // Marca actions como opcional con "?"

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AppBar(
      backgroundColor: Colors.grey.shade100,
      iconTheme: IconThemeData(
        color: theme.colorScheme.primary,
      ),
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.notoSansJp(
          textStyle: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey,
          height: 1.0,
        ),
      ),
      actions: actions, // Utiliza actions directamente, ya que es opcional y puede ser null
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
