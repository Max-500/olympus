import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navigation_bar.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    List<Map<String, dynamic>> recommendedBooks = [
      {
        'name': 'Muscle',
        'author': 'Alan Trotter',
        'url': 'assets/images/books/book2.png',
      },
      {
        'name': 'Dominicana',
        'author': 'Angie Cruz',
        'url': 'assets/images/books/book2.png',
      },
      {
        'name': 'A new program for Graphic Design',
        'author': 'David Reinfurt',
        'url': 'assets/images/books/book2.png',
      },
      {
        'name': 'Muscle',
        'author': 'Alan Trotter',
        'url': 'assets/images/books/book2.png',
      },
      {
        'name': 'Dominicana',
        'author': 'Angie Cruz',
        'url': 'assets/images/books/book2.png',
      },
      {
        'name': 'A new program for ',
        'author': 'David Reinfurt',
        'url': 'assets/images/books/book2.png',
      },
    ];

    List<Map<String, dynamic>> favoriteBooks = [
      {
        'name': 'Little Woman',
        'author': 'Louisa May',
        'url': 'assets/images/books/little.jpg',
      },
      {
        'name': 'Little Woman',
        'author': 'Louisa May',
        'url': 'assets/images/books/little.jpg',
      },
      {
        'name': 'Little Woman',
        'author': 'Louisa May',
        'url': 'assets/images/books/little.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Libros Recomendados',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final book in recommendedBooks)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 120,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(book['url']),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.black.withOpacity(0.5),
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  book['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Libros Favoritos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            Column(
              children: [
                for (final book in favoriteBooks)
                  Container(
                    width: double.infinity, // Ancho completo
                    height: 200, // Alto fijo para cada fila
                    padding: EdgeInsets.all(10), // Espaciado interno de la fila
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Tamaño mínimo para la fila
                      mainAxisAlignment: MainAxisAlignment.spaceAround, // Alineación de los elementos alrededor
                      crossAxisAlignment: CrossAxisAlignment.center, // Alineación vertical centrada
                      children: [
                        Container(
                          width: 100, // Ancho de la imagen
                          height: double.infinity, // Alto completo para ocupar el espacio vertical
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(book['url']),
                              fit: BoxFit.cover, // Ajusta el fit según tu preferencia
                            ),
                          ),
                        ),
                        SizedBox(width: 20), // Espacio horizontal entre la imagen y el texto
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(book['name']),
                            Text(book['author']),
                            SizedBox(height: 8), // Ajusta el espacio vertical entre el texto del autor y el icono
                          ],
                        ),
                        SizedBox(width: 8), // Espacio horizontal entre el texto y el icono
                        IconButton(
                          icon: Icon(Icons.bookmark),
                          onPressed: () {
                            // Acción al presionar el botón de guardar
                          },
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 20), // Espacio vertical entre cada fila de favoritos
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
