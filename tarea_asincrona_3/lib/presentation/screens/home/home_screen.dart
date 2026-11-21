// Importa los componentes de Flutter.
import 'package:flutter/material.dart';

// Importa la segunda pantalla.
import '../about/about_screen.dart';

// Pantalla inicial de la aplicación.
class HomeScreen extends StatelessWidget {
  // Constructor constante con key.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Cada pantalla tiene su propio Scaffold.
    return Scaffold(
      // Barra superior de la pantalla inicial.
      appBar: AppBar(
        // Título de la pantalla.
        title: const Text('Inicio'),
        // Color de la barra.
        backgroundColor: const Color(0xFF203B5C),
        // Color del texto e iconos.
        foregroundColor: Colors.white,
      ),
      // Contenido principal.
      body: Center(
        // Organiza los elementos verticalmente.
        child: Padding(
          // Deja espacio alrededor del contenido.
          padding: const EdgeInsets.all(24),
          child: Column(
            // Centra los elementos.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono representativo.
              const Icon(Icons.school, size: 76, color: Color(0xFF246B45)),
              // Espacio entre elementos.
              const SizedBox(height: 18),
              // Texto de bienvenida.
              const Text(
                'Universidad Agraria del Ecuador',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              // Separación.
              const SizedBox(height: 10),
              // Descripción de la aplicación.
              const Text(
                'Ejemplo de navegación entre dos pantallas en Flutter.',
                textAlign: TextAlign.center,
              ),
              // Separación antes del botón.
              const SizedBox(height: 24),
              // Botón que abre la segunda pantalla.
              ElevatedButton.icon(
                // Navega a Acerca de.
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // Construye la pantalla con constructor const.
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
                // Icono del botón.
                icon: const Icon(Icons.info_outline),
                // Texto del botón.
                label: const Text('Ver acerca de'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
