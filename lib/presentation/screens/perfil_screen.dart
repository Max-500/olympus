import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olympus/presentation/widgets/my_elevated_button.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Container(
          width: screenWidth * 0.7, // Usa el 70% del ancho total
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/perfil.jpg'), // Asegúrate de tener la imagen en la carpeta de assets
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Apellidos',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre de usuario',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Libros de interés',
                  ),
                ),
              ),
              SizedBox(height: 100,),
              SizedBox(
                width: screenWidth * 0.7,
                child: MyElevatedButton(title: 'Sign Up', color: Color.fromRGBO(152, 105, 57, 1), textColor: Colors.white, onPressed: () => context.go('/login'), horizontalPadding: 40, verticalPadding: 20, sizeText: 25,)),
            ],
          ),
        ),
      ),
    );
  }
}
