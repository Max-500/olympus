import 'package:flutter/material.dart';

class DetailsBooksScreen extends StatelessWidget {
  const DetailsBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> staticBook = books[0];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalles del libro',
          style: TextStyle(color: Colors.white), // Color del texto del AppBar
        ),
        centerTitle: true,
        toolbarHeight: 100, // Ajusta la altura del AppBar y del color de fondo
        backgroundColor: const Color.fromRGBO(106, 73, 40, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen del libro centrada y de tamaño grande
              SizedBox(
                width: 250,
                height: 350, // Ajusta el tamaño de acuerdo al espacio disponible en tu pantalla
                child: Image.asset(
                  staticBook['url'],
                  fit: BoxFit.cover, // Puedes probar otros valores como BoxFit.contain
                ),
              ),

              SizedBox(height: 16.0), // Espacio entre la imagen y el título

              // Título del libro centrado
              Text(
                staticBook['name'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0), // Espacio entre el título y la descripción

              // Descripción del libro
              Text(
                'by ${staticBook['author']}',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32.0), // Espacio entre la descripción y el botón

              // Contenedor para el botón "Get the book"
              // Contenedor para el botón "Get the book"
// Contenedor para el botón "Get the book"
              Container(
                width: double.infinity, // Ancho completo del contenedor
                alignment: Alignment.center, // Alineación del botón al centro
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón "Get the book"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(106, 73, 40, 1),
                    minimumSize: Size(250, 50), // Tamaño mínimo del botón (ancho, alto)
                  ),
                  child: Text(
                    'Get the book',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 18, // Tamaño del texto del botón
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}


// Lista de libros estática
List<Map<String, dynamic>> books = [
  {
    'name': 'Little Woman',
    'author': 'Louisa May',
    'url': 'assets/images/books/little.jpg',
  },
];
