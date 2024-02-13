import 'package:flutter/material.dart';
import 'package:proyecto_ed/books/books.dart';
import 'package:proyecto_ed/data/book_card.dart';
import 'package:proyecto_ed/hokkori_ui/app_card.dart';
import 'package:proyecto_ed/hokkori_ui/default_appbar.dart';
import 'package:proyecto_ed/hokkori_ui/default_page/default_page.dart';
import 'package:proyecto_ed/hokkori_ui/section_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      appBar: const DefaultAppBar(title: 'Bibliografía para Estructuras Discretas'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SectionTitle('Libros'),
          AppCardList(
            items: books.map((book) => BookData(book: book)).toList(),
          ),
        ],
      ),
    );
  }
}