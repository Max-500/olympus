import 'package:flutter/material.dart';
import 'package:olympus/presentation/widgets.dart';
import 'package:olympus/shared/data/local_book_posts.dart';

class BookSlider extends StatelessWidget {
  const BookSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookPosts.length,
      itemBuilder: (context, index) {
        final String name = bookPosts[index]['name'];
        return SliderElementBook(
            name: name.length > 10 ? '${name.substring(0, 7)}...' : name,
            autor: bookPosts[index]['autor'],
            url: bookPosts[index]['url']);
      },
      scrollDirection: Axis.horizontal,
    );
  }
}
