import 'package:flutter/material.dart';                // Importa Flutter para poder usar widgets y clases de UI

var backgroundColor = Colors.grey[300];                // Color de fondo "general" (gris claro) para vistas móviles
var defaultBackgroundColor = Colors.grey[200];         // Color de fondo alternativo (un poco más claro), usado en tablet/desktop

var myAppBar = AppBar(                                 // AppBar reutilizable (barra superior) para varias pantallas
  title: const Text("Dashboard Responsive"),           // Título que se muestra en la barra de la app
);

var myDrawer = Drawer(                                 // Drawer reutilizable (menú lateral que se desliza desde la izquierda)
  child: ListView(                                     // ListView: lista desplazable de elementos dentro del Drawer
    padding: EdgeInsets.zero,                          // Quita padding para que el header toque los bordes
    children: [
      UserAccountsDrawerHeader(                        // Cabecera del Drawer con info de usuario (foto, nombre, email)
        decoration: const BoxDecoration(color: Colors.blue), // Fondo azul para la cabecera
        currentAccountPicture: const CircleAvatar(     // Foto de perfil circular del usuario
          backgroundImage: AssetImage("assets/images/profile.jpg"), // Imagen local (debes declararla en pubspec.yaml)
        ),
        accountName: const Text("Usuario Demo"),       // Nombre a mostrar
        accountEmail: const Text("usuario@email.com"), // Correo a mostrar
      ),
      ListTile(                                        // Opción del menú: "Inicio"
        leading: const Icon(Icons.home),               // Ícono de casita a la izquierda
        title: const Text("Inicio"),                   // Texto del ítem
        onTap: () {},                                  // Acción al tocar (vacía por ahora; aquí iría navegación)
      ),
      ListTile(                                        // Opción del menú: "Configuración"
        leading: const Icon(Icons.settings),           // Ícono de engranaje
        title: const Text("Configuración"),            // Texto del ítem
        onTap: () {},                                  // Acción al tocar (pendiente de implementar)
      ),
      ListTile(                                        // Opción del menú: "Salir"
        leading: const Icon(Icons.logout),             // Ícono de salida/cerrar sesión
        title: const Text("Salir"),                    // Texto del ítem
        onTap: () {},                                  // Acción al tocar (pendiente de implementar)
      ),
    ],
  ),
);
