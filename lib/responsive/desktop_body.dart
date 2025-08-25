import 'package:flutter/material.dart';                     // Importa Flutter
import '../constants.dart';                                 // Importa constantes (colores, AppBar, Drawer)
import '../util/my_box.dart';                               // Importa el widget "MyBox" (imagen + título)
import '../util/my_tile.dart';                              // Importa el widget "MyTile" (ítem de lista)

class DesktopScaffold extends StatelessWidget {             // Clase para el diseño en pantallas de escritorio
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(                                        // Estructura principal con AppBar, Drawer y contenido
      backgroundColor: defaultBackgroundColor,              // Fondo gris claro (definido en constants.dart)
      appBar: myAppBar,                                     // Usa la AppBar común
      drawer: myDrawer,                                     // Usa el Drawer común (menú lateral con foto)
      body: Row(                                            // Layout en fila: izquierda, centro y derecha
        children: [
          // Publicidad izquierda
          Expanded(                                         // Primera columna: publicidad
            child: Padding(
              padding: const EdgeInsets.all(8.0),           // Espacio alrededor
              child: Image.asset(                           // Imagen de publicidad desde assets
                "assets/images/publi1.jpg",
                fit: BoxFit.cover,                          // Ajusta para cubrir todo el espacio
              ),
            ),
          ),

          // Centro con productos
          Expanded(
            flex: 2,                                        // Centro ocupa el doble de ancho que laterales
            child: Column(
              children: [
                AspectRatio(                                // Área superior: grilla de productos
                  aspectRatio: 4,                           // Relación de aspecto (ancho 4 veces alto)
                  child: GridView.builder(                  // Construye una grilla dinámica
                    itemCount: 4,                           // 4 productos
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,                    // 4 columnas (una por producto)
                    ),
                    itemBuilder: (context, index) {
                      return MyBox(                         // Cada casilla es un MyBox
                        imagePath: "assets/images/prod${index + 1}.jpg", // prod1.jpg...prod4.jpg
                        title: "Producto ${index + 1}",     // Texto debajo de la imagen
                      );
                    },
                  ),
                ),
                Expanded(                                   // Área inferior: lista de productos
                  child: ListView.builder(
                    itemCount: 6,                           // Lista de 6 elementos
                    itemBuilder: (context, index) {
                      return MyTile(                        // Cada ítem es un MyTile
                        title: "Producto ${index + 1}",     // Título
                        subtitle: "Descripción breve del producto ${index + 1}", // Subtítulo
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Publicidad derecha
          Expanded(                                         // Tercera columna: publicidad
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/publi2.jpg",                 // Segunda imagen publicitaria
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
