import 'package:flutter/material.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navigation_bar.dart';

class AllBookScreen extends StatelessWidget {
  const AllBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    List<Map<String, dynamic>> books = [
      {
        'name': 'Little Woman',
        'des': 'La innovación es el principal acontecimiento de la era moderna, la razón por la que experimentamos tanto mejoras espectaculares.',
        'url': 'assets/images/books/little.jpg',
      },
      {
        'name': 'Little Woman',
        'des': 'La innovación es el principal acontecimiento de la era moderna, la razón por la que experimentamos tanto mejoras espectaculares.',
        'url': 'assets/images/books/little.jpg',
      },
      {
        'name': 'Little Woman',
        'des': 'La innovación es el principal acontecimiento de la era moderna, la razón por la que experimentamos tanto mejoras espectaculares.',
        'url': 'assets/images/books/little.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: const MyAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16), // Ajuste para bajar el título
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Todos los libros',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];

                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centra los elementos en la fila
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Imagen del libro
                      Container(
                        width: 100,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(book['url']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 40), // Espacio entre la imagen y la información del libro
                      // Información del libro
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center( // Centra el título
                              child: Text(
                                book['name'],
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              book['des'],
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center, // Alineación justificada del texto
                            ),
                            SizedBox(height: 10),
                            Center( // Centra el botón
                              child: ElevatedButton(
                                onPressed: () {
                                  // Acción al presionar el botón "Read"
                                  // Por ejemplo, podrías abrir una URL en un navegador o realizar una navegación interna
                                },
                                child: Text('Read'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
