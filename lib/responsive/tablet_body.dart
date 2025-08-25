import 'package:flutter/material.dart';                     // Importa Flutter
import '../constants.dart';                                 // Importa constantes
import '../util/my_box.dart';                               // Importa MyBox
import '../util/my_tile.dart';                              // Importa MyTile

class TabletScaffold extends StatelessWidget {              // Clase para el diseño en tablets
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(                                        // Estructura principal
      backgroundColor: defaultBackgroundColor,              // Fondo gris claro
      appBar: myAppBar,                                     // Usa la AppBar común
      drawer: myDrawer,                                     // Usa el Drawer común
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AspectRatio(                                    // Parte superior: grilla
              aspectRatio: 4,                               // Relación 4:1 (muy ancha, baja altura)
              child: GridView.builder(
                itemCount: 4,                               // 4 productos
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,                        // 4 columnas
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
                itemCount: 6,                               // 6 ítems en la lista
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
