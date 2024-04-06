import 'package:flutter/material.dart';
import 'package:olympus/presentation/widgets.dart';
import 'package:olympus/shared/data/local_books_search.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    // Datos de libros (pueden provenir de alguna fuente de datos)
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            for (var book in books)
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  children: [
                    // Foto del libro más grande
                    Container(
                      width: 120.0,
                      height: 180.0,
                      margin: const EdgeInsets.only(left: 16.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(book['imageUrl']!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    VerticalDivider(color: Colors.grey, thickness: 1.0, width: 16.0),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            book['title']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(height: 8.0),
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
                    ),
                    SizedBox(width: 32.0),
                    Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                      size: 35.0,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
