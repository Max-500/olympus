import 'package:flutter/material.dart';
import 'package:olympus/presentation/widgets.dart';
import 'package:olympus/shared/data/local_books_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    List<Map<String, dynamic>> books = bookPosts;


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barra de búsqueda centrada
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar libros',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Utiliza un ListView.builder para mostrar los libros en filas
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Libros Similares',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: books.length,
              itemBuilder: (context, index) {
                if (index.isOdd) return SizedBox(height: 16.0); // Espacio entre las filas

                final currentBook = books[index];
                final nextBook = index + 1 < books.length ? books[index + 1] : null;

                return Row(
                  children: [
                    // Libro actual y siguiente (si existe)
                    for (var book in [currentBook, nextBook])
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Foto del libro más grande
                              Container(
                                width: 120.0,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(book!['imageUrl']!),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              SizedBox(height: 8.0),
                              // Título y autor debajo de la imagen
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    book['title']!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    book['author']!,
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    SizedBox(width: 16.0), // Espacio entre los libros
                  ],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
