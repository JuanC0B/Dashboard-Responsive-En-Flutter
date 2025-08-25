import 'package:flutter/material.dart';                     // Importa Flutter

class ResponsiveLayout extends StatelessWidget {            // Clase que decide qué diseño usar según el tamaño de pantalla
  final Widget mobileBody;                                  // Pantalla móvil
  final Widget tabletBody;                                  // Pantalla tablet
  final Widget desktopBody;                                 // Pantalla escritorio

  const ResponsiveLayout({                                  // Constructor con parámetros obligatorios
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(                                   // LayoutBuilder mide el ancho disponible
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {                   // Si el ancho es menor a 500px
          return mobileBody;                                // → Mostrar diseño móvil
        } else if (constraints.maxWidth < 1100) {           // Si el ancho está entre 500 y 1100px
          return tabletBody;                                // → Mostrar diseño tablet
        } else {                                            // Si el ancho es mayor o igual a 1100px
          return desktopBody;                               // → Mostrar diseño escritorio
        }
      },
    );
  }
}
