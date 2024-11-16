import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla con Pie de Página'),
      ),
      body: Center(
        child: Text(
          'Has seleccionado el botón: $_selectedIndex',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mensajes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Instrucciones para crear un proyecto Flutter desde cero en Visual Studio Code:
// 1. Asegúrate de tener Flutter y Dart instalados y configurados.
// 2. Abre Visual Studio Code y asegúrate de tener las extensiones de Flutter y Dart.
// 3. Abre la terminal y navega a la ubicación donde deseas crear tu proyecto.
// 4. Ejecuta el comando: flutter create nombre_del_proyecto
// 5. Navega al directorio del proyecto con: cd nombre_del_proyecto
// 6. Abre el proyecto en Visual Studio Code con: code .
// 7. Ejecuta el proyecto con: flutter run o usa el botón de ejecución en VS Code.
