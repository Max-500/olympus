import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olympus/presentation/screens.dart';

// Define la función de navegación
void navigateToScreen(BuildContext context, int index) {
  final goRouter = GoRouter.of(context);
  switch (index) {
    case 0: // Home
      goRouter.go('/home');
      break;
    case 1: // Search
      goRouter.go('/search');
      break;
    case 2: // Library
      goRouter.go('/library'); // Asegúrate de tener una ruta para la pantalla de la biblioteca
      break;
    case 3: // Cart
      goRouter.go('/cart');
      break;
    default:
      break;
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight,
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromRGBO(106, 73, 40, 1),
        unselectedLabelStyle: const TextStyle(color: Color.fromRGBO(106, 73, 40, 1)),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: 0,
        showUnselectedLabels: true,
        onTap: (index) {
          // Llama a la función de navegación al hacer clic en el ícono
          navigateToScreen(context, index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Cart'),
        ],
      ),
    );
  }
}
