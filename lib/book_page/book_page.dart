import 'package:flutter/material.dart';
import 'package:proyecto_ed/data/book_card.dart';
import 'package:proyecto_ed/hokkori_ui/app_card.dart';
import 'package:proyecto_ed/hokkori_ui/default_appbar.dart';
import 'package:proyecto_ed/hokkori_ui/default_page/default_page.dart';
import 'package:proyecto_ed/hokkori_ui/section_title.dart';
import 'package:proyecto_ed/model/book.dart';

class BookPage extends StatelessWidget {
  final Book book;
  const BookPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      appBar: DefaultAppBar(title: book.title),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionTitle('Datos'),
          AppCard(body: BookDataWithoutButton(book: book), isFirst: true, isLast: true),
          if (book.description != null) // Agrega el condicional aquí
            ...[
              const SectionTitle('Temario'),
              AppCard(body: Text(book.description!), isFirst: true, isLast: true),
            ],
          if (book.whereIs != null) // Agrega el condicional aquí
            ...[
              const SectionTitle('Ubicación'),
              AppCard(body: Text(book.whereIs!), isFirst: true, isLast: true),
            ],
        ],
      ),
    );
  }
}