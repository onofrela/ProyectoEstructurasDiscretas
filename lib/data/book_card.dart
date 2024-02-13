import 'package:flutter/material.dart';
import 'package:proyecto_ed/book_page/book_page.dart';
import 'package:proyecto_ed/hokkori_ui/add_button.dart';
import 'package:proyecto_ed/model/book.dart';

class BookData extends StatelessWidget {
  final Book book;
  const BookData({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String authors = '';

    for (int i = 0; i < book.authors.length; i++) {
      authors += book.authors[i];
      if (i < book.authors.length - 1) {
        authors += ', ';
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Imagen
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            book.imagePath ?? 'default_image_path',
            width: 111,
            height: 157.5,
            fit: BoxFit.cover,
          ),
        ),
        // Columna de textos y botón
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Textos
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      authors,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      book.country,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      book.year.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AddButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookPage(book: book),
                    ));
                  },
                  text: 'Ver más',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BookDataWithoutButton extends StatelessWidget {
  final Book book;
  const BookDataWithoutButton({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String authors = '';

    for (int i = 0; i < book.authors.length; i++) {
      authors += book.authors[i];
      if (i < book.authors.length - 1) {
        authors += ', ';
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Imagen
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            book.imagePath ?? 'default_image_path',
            width: 111,
            height: 157.5,
            fit: BoxFit.cover,
          ),
        ),
        // Columna de textos y botón
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Textos
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      authors,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      book.country,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      book.year.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
