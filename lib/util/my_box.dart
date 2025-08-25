import 'package:flutter/material.dart';                          // Importa Flutter para usar widgets y estilos

class MyBox extends StatelessWidget {                            // Clase "MyBox": un cuadro que muestra una imagen y un título
  final String imagePath;                                        // Parámetro: ruta de la imagen a mostrar (por ejemplo: "assets/images/prod1.jpg")
  final String title;                                            // Parámetro: texto del título (por ejemplo: "Producto 1")

  const MyBox({                                                  // Constructor de la clase (recibe imagePath y title obligatorios)
    Key? key,
    required this.imagePath,                                     // "required" = es obligatorio pasar este dato
    required this.title,
  }) : super(key: key);                                          // Llama al constructor padre (StatelessWidget)

  @override
  Widget build(BuildContext context) {                           // Método que construye lo que se ve en pantalla
    return Padding(                                              // Padding = espacio alrededor del contenido
      padding: const EdgeInsets.all(8),                          // Margen de 8 píxeles por todos lados
      child: Container(                                          // Contenedor principal del cuadro
        decoration: BoxDecoration(                               // Decoración del contenedor
          borderRadius: BorderRadius.circular(8),                // Bordes redondeados (radio 8)
          color: Colors.white,                                   // Fondo blanco
          boxShadow: [                                           // Efecto de sombra (para que se vea elevado)
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),               // Sombra gris semitransparente
              blurRadius: 4,                                     // Difuminado de la sombra
              offset: const Offset(2, 2),                        // Posición de la sombra (2px a la derecha y abajo)
            )
          ],
        ),
        child: Column(                                           // Organiza los hijos en columna (vertical)
          mainAxisAlignment: MainAxisAlignment.center,           // Centra verticalmente los elementos
          children: [
            Expanded(                                            // Ocupa todo el espacio vertical disponible
              child: ClipRRect(                                  // ClipRRect = recorta con bordes redondeados
                borderRadius: BorderRadius.circular(8),          // Misma curvatura que el contenedor
                child: Image.asset(                              // Muestra una imagen desde "assets/"
                  imagePath,                                     // Ruta recibida como parámetro
                  fit: BoxFit.cover,                             // Ajusta la imagen a cubrir todo el espacio
                  width: double.infinity,                        // Ocupar todo el ancho posible
                ),
              ),
            ),
            const SizedBox(height: 8),                           // Espacio de 8px entre la imagen y el texto
            Text(                                                // Texto del título
              title,                                             // Texto recibido como parámetro
              style: const TextStyle(fontWeight: FontWeight.bold), // Estilo: negrita
            ),
            const SizedBox(height: 8),                           // Espacio inferior
          ],
        ),
      ),
    );
  }
}
