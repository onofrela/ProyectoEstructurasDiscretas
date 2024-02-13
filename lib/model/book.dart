class Book {
  String title;
  List<String> authors;
  String? city;
  String country;
  String publisher;
  int year;
  String? edition; // Edición del libro (opcional)
  String? translator; // Traductor del libro (opcional)
  String? imagePath; // Ruta de la imagen (opcional)
  String? description; // Ruta de la imagen (opcional)

  Book({
    required this.title,
    required this.authors,
    this.city,
    required this.country,
    required this.publisher,
    required this.year,
    this.edition,
    this.translator,
    this.imagePath,
    this.description,
  });
}
