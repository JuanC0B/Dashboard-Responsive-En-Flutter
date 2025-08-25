import 'package:flutter/material.dart';                // Importa el paquete base de Flutter para construir interfaces (widgets, temas, etc.)
import 'constants.dart';                               // Importa constantes reutilizables: colores, AppBar y Drawer comunes
import 'responsive/responsive_layout.dart';            // Importa el layout que elige automáticamente entre móvil/tablet/escritorio
import 'responsive/mobile_body.dart';                  // Importa la vista para pantallas pequeñas (móviles)
import 'responsive/tablet_body.dart';                  // Importa la vista para pantallas medianas (tablets)
import 'responsive/desktop_body.dart';                 // Importa la vista para pantallas grandes (escritorio/PC)

void main() {                                          // Punto de entrada de la app (siempre empieza por aquí)
  runApp(const MyApp());                               // Arranca la aplicación mostrando el widget raíz MyApp
}

class MyApp extends StatelessWidget {                  // Widget raíz de la app; Stateless = no guarda estado interno
  const MyApp({super.key});                            // Constructor con una "key" opcional (buena práctica Flutter)

  @override
  Widget build(BuildContext context) {                 // Método que construye la interfaz de este widget
    return MaterialApp(                                // MaterialApp: contenedor principal (tema, rutas, título, etc.)
      debugShowCheckedModeBanner: false,               // Oculta la cinta roja de "DEBUG" en la esquina
      title: 'Dashboard Responsive',                   // Título de la app (usado por el SO y algunas integraciones)
      theme: ThemeData(primarySwatch: Colors.blue),    // Tema global: paleta de color base (azul)
      home: const ResponsiveLayout(                    // Pantalla inicial: un layout que decide qué UI mostrar según el ancho
        mobileBody: MobileBody(),                      // Si el ancho es chico -> usa la vista móvil
        tabletBody: TabletScaffold(),                  // Si el ancho es intermedio -> usa la vista tablet
        desktopBody: DesktopScaffold(),                // Si el ancho es grande -> usa la vista de escritorio
      ),
    );
  }
}
