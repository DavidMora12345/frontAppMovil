import 'package:flutter/material.dart';
import 'register_screen.dart'; // Importa la pantalla de registro
import 'CarAnimationScreen.dart'; // Importa la pantalla de animación del carrito
import 'dashboard_screen.dart'; // Importa la pantalla del dashboard

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    // Aquí solo mostramos un mensaje en consola a modo de prueba
    print('Email: $email');
    print('Password: $password');

    // Navegar a la animación del carrito antes de mostrar el Dashboard
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CarAnimationScreen(destination: DashboardScreen())),
    );
  }

  void _navigateToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo blanco
          Container(
            color: Colors.white,
          ),
          // Contenido del login
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo o imagen
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.person, size: 50, color: Colors.white), // Ícono de persona
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                        activeColor: Colors.pinkAccent,
                        checkColor: Colors.white,
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.orange,
                          fontFamily: 'Pixel',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _login,
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent, // Fondo del botón
                      foregroundColor: Colors.white, // Color del texto del botón
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.black26,
                      elevation: 10,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      // Añade la lógica para olvidaste tu contraseña
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.orange, fontFamily: 'Pixel'),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: _navigateToRegister,
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.orange, fontFamily: 'Pixel'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
