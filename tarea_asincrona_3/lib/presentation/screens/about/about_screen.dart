// Importa Flutter para crear la pantalla.
import 'package:flutter/material.dart';

// Importa el widget reutilizable de la tarjeta UAE.
import '../../widgets/tarjeta_uae.dart';

// Segunda pantalla: Acerca de.
class AboutScreen extends StatelessWidget {
  // Constructor constante con key, como solicita la actividad.
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold propio de esta pantalla.
    return Scaffold(
      // Barra superior con el título solicitado.
      appBar: AppBar(
        // Título de la pantalla.
        title: const Text('Acerca de'),
        // Fondo azul oscuro similar a la referencia.
        backgroundColor: const Color(0xFF203B5C),
        // Texto e iconos blancos.
        foregroundColor: Colors.white,
      ),
      // Contenido de la pantalla.
      body: Center(
        // Mantiene la tarjeta centrada y con margen.
        child: Padding(
          padding: const EdgeInsets.all(24),
          // Uso del widget personalizado y reutilizable.
          child: const TarjetaUAE(),
        ),
      ),
    );
  }
}
