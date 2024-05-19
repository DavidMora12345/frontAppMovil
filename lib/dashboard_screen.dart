import 'package:flutter/material.dart';
import 'CarAnimationScreen.dart'; // Importa la pantalla de animación del carrito
import 'login_screen.dart'; // Importa la pantalla de inicio de sesión
import 'userdatascreen.dart'; // Importa la pantalla de datos del usuario
import 'publishvehiclescreen.dart'; // Importa la pantalla de publicar vehículo
import 'managepublicationsscreen.dart'; // Importa la pantalla de gestión de publicaciones

class DashboardScreen extends StatelessWidget {
  void _logout(BuildContext context) {
    // Navegar a la animación del carrito antes de volver al login
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CarAnimationScreen(destination: LoginScreen())),
    );
  }

  void _navigateToUserData(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserDataScreen()),
    );
  }

  void _navigateToPublishVehicle(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PublishVehicleScreen()),
    );
  }

  void _navigateToManagePublications(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ManagePublicationsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.orange), // Texto naranja
        ),
        backgroundColor: Colors.white, // Fondo blanco
        iconTheme: IconThemeData(color: Colors.orange), // Ícono del menú en naranja
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Usuario',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Pixel',
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.orange),
              title: Text('Datos del Usuario', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
                _navigateToUserData(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car, color: Colors.orange),
              title: Text('Publicar Vehículo', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
                _navigateToPublishVehicle(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.manage_search, color: Colors.orange),
              title: Text('Gestión de Publicaciones', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
                _navigateToManagePublications(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.orange),
              title: Text('Inicio', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment, color: Colors.orange),
              title: Text('Tareas', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.orange),
              title: Text('Calendario', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.group, color: Colors.orange),
              title: Text('Grupos', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.orange),
              title: Text('Configuración', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.orange),
              title: Text('Cerrar sesión', style: TextStyle(color: Colors.orange, fontFamily: 'Pixel')),
              onTap: () {
                _logout(context); // Navegar a la pantalla de animación del carrito
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white, // Fondo blanco
        child: Center(
          child: Text(
            'Bienvenido a tu Dashboard!',
            style: TextStyle(fontSize: 24, color: Colors.orange, fontFamily: 'Pixel'),
          ),
        ),
      ),
    );
  }
}
