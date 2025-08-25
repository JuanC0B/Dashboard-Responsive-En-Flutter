import 'package:flutter/material.dart';                          // Importa Flutter para usar widgets y estilos

class MyTile extends StatelessWidget {                           // Clase "MyTile": un ítem en forma de tarjeta/lista
  final String title;                                            // Parámetro: texto principal (ejemplo: "Producto 1")
  final String subtitle;                                         // Parámetro: texto secundario (ejemplo: "Descripción breve")

  const MyTile({                                                 // Constructor de la clase
    Key? key,
    required this.title,                                         // "required" = debes pasar un título
    required this.subtitle,                                      // y también un subtítulo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {                           // Método que dibuja la interfaz
    return Padding(                                              // Padding = margen alrededor de cada tile
      padding: const EdgeInsets.all(8.0),
      child: Container(                                          // Contenedor principal
        decoration: BoxDecoration(                               // Decoración visual
          borderRadius: BorderRadius.circular(8),                // Bordes redondeados (radio 8)
          color: Colors.grey[100],                               // Fondo gris claro
          boxShadow: [                                           // Sombra para dar efecto de elevación
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),               // Sombra gris semitransparente
              blurRadius: 3,                                     // Difuminado de la sombra
              offset: const Offset(1, 1),                        // Posición de la sombra
            )
          ],
        ),
        child: ListTile(                                         // ListTile = widget de lista estándar en Flutter
          leading: const Icon(                                   // Ícono al inicio (izquierda)
            Icons.shopping_bag,                                  // Ícono de bolsa de compras
            color: Colors.blue,                                  // Color azul
          ),
          title: Text(                                           // Texto principal
            title,                                               // Viene del parámetro
            style: const TextStyle(fontWeight: FontWeight.bold), // Negrita
          ),
          subtitle: Text(subtitle),                              // Texto secundario (descripción)
          trailing: const Icon(                                  // Ícono al final (derecha)
            Icons.arrow_forward_ios,                             // Flecha indicando "más detalles"
            size: 16,                                            // Tamaño pequeño
          ),
        ),
      ),
    );
  }
}
