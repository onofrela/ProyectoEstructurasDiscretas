import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget body;
  final bool isFirst;
  final bool isLast;

  const AppCard({super.key, required this.body, this.isFirst = false, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.vertical(
      top: isFirst ? const Radius.circular(8) : Radius.zero,
      bottom: isLast ? const Radius.circular(8) : Radius.zero,
    );

    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity, // Ancho fijo
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      ),
      child: body,
    );
  }
}

class AppCardList extends StatelessWidget {
  final List<Widget> items;

  const AppCardList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        final isFirst = index == 0;
        final isLast = index == items.length - 1;

        return Column(
          children: [
            AppCard(
              body: item,
              isFirst: isFirst,
              isLast: isLast,
            ),
            if (!isLast) const SizedBox(height: 4), // Espacio de 1 entre objetos, omitido para el último
          ],
        );
      }).toList(),
    );
  }
}
