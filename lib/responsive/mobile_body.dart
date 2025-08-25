import 'package:flutter/material.dart';                     // Importa Flutter
import '../constants.dart';                                 // Importa constantes (colores, Drawer)
import '../util/my_box.dart';                               // Importa MyBox (imagen + título)
import '../util/my_tile.dart';                              // Importa MyTile (ítem de lista)

class MobileBody extends StatelessWidget {                  // Clase para el diseño en pantallas móviles
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(                                        // Estructura principal
      backgroundColor: backgroundColor,                     // Fondo gris definido en constants.dart
      appBar: AppBar(title: const Text("Dashboard Móvil")), // AppBar personalizada (título distinto)
      drawer: myDrawer,                                     // Drawer común (menú lateral)
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(                                    // Parte superior: grilla cuadrada
              aspectRatio: 1,                               // Relación 1:1 → cuadrada
              child: GridView.builder(                      // Grilla dinámica
                itemCount: 4,                               // 4 productos
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,                        // 2 columnas (2x2)
                ),
                itemBuilder: (context, index) {
                  return MyBox(                             // Cada casilla es un MyBox
                    imagePath: "assets/images/prod${index + 1}.jpg",
                    title: "Producto ${index + 1}",
                  );
                },
              ),
            ),
            Expanded(                                       // Parte inferior: lista
              child: ListView.builder(
                itemCount: 4,                               // Lista de 4 elementos
                itemBuilder: (context, index) {
                  return MyTile(                            // Cada ítem es un MyTile
                    title: "Producto ${index + 1}",
                    subtitle: "Descripción breve del producto ${index + 1}",
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
