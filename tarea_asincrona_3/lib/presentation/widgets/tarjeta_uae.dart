// Importa Flutter para construir el widget personalizado.
import 'package:flutter/material.dart';

// Tarjeta institucional reutilizable de la Universidad Agraria del Ecuador.
class TarjetaUAE extends StatelessWidget {
  // Constructor constante con key.
  const TarjetaUAE({super.key});

  @override
  Widget build(BuildContext context) {
    // Contenedor principal de la tarjeta.
    return Container(
      // Limita el ancho de la tarjeta.
      width: 280,
      // Espacio interno.
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 26),
      // Decoración visual de la tarjeta.
      decoration: BoxDecoration(
        // Fondo verde muy claro.
        color: const Color(0xFFEAF4EE),
        // Borde verde y esquinas redondeadas.
        border: Border.all(color: const Color(0xFF6AA681), width: 1.6),
        borderRadius: BorderRadius.circular(12),
      ),
      // Organiza el contenido de forma vertical.
      child: Column(
        // Ajusta la tarjeta al contenido.
        mainAxisSize: MainAxisSize.min,
        // Centra los elementos.
        children: [
          // Círculo con las siglas de la universidad.
          Container(
            // Tamaño del círculo.
            width: 54,
            height: 54,
            // Forma circular y fondo verde.
            decoration: const BoxDecoration(
              color: Color(0xFF32824D),
              shape: BoxShape.circle,
            ),
            // Texto dentro del círculo.
            child: const Center(
              child: Text(
                'UAE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          // Espacio debajo del círculo.
          const SizedBox(height: 14),
          // Nombre de la tarjeta.
          const Text(
            'Tarjeta UAE',
            style: TextStyle(
              color: Color(0xFF246B45),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Separación.
          const SizedBox(height: 7),
          // Nombre institucional.
          const Text(
            'Universidad Agraria\ndel Ecuador',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF455B4C),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
