import 'package:flutter/material.dart';
import 'package:proyecto_ed/breakpoints/breakpoints.dart';

class DefaultPage extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appBar;
  final Widget? floatingActionButton; // Hacer el botón flotante opcional
  const DefaultPage({super.key, required this.appBar, required this.body, this.floatingActionButton}); // Ajustar el constructor para hacer floatingActionButton opcional

  @override
  Widget build(BuildContext context) {

    double sidePadding = breakpointByWidth(context, defaultSize: 32, md:16);
    double tbPadding = breakpointByWidth(context, defaultSize: 8, md:4);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: sidePadding, right: sidePadding, top: tbPadding, bottom: tbPadding),
          child: body,
        ),
      ),
      floatingActionButton: floatingActionButton, // Agregar el botón flotante solo si se proporciona
    );
  }
}
