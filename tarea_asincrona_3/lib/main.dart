// Importa Flutter para construir la interfaz de la aplicación.
import 'package:flutter/material.dart';

// Importa la pantalla principal desde la carpeta de presentación.
import 'presentation/screens/home/home_screen.dart';

// Punto de entrada de la aplicación.
void main() {
  // Ejecuta la aplicación Flutter.
  runApp(const MiAplicacion());
}

// Widget raíz de la aplicación.
class MiAplicacion extends StatelessWidget {
  // Constructor constante con key opcional.
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    // Configura el tema y muestra la pantalla inicial.
    return MaterialApp(
      // Oculta la etiqueta de depuración.
      debugShowCheckedModeBanner: false,
      // Nombre de la aplicación.
      title: 'Tarea Asíncrona 3 - UAE',
      // Tema visual general.
      theme: ThemeData(
        // Usa Material 3.
        useMaterial3: true,
        // Color principal de la aplicación.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF246B45)),
        // Fondo de las pantallas.
        scaffoldBackgroundColor: const Color(0xFFF5F7F5),
      ),
      // Pantalla que se muestra al iniciar.
      home: const HomeScreen(),
    );
  }
}
