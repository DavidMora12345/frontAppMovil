import 'package:flutter/material.dart';

class ManagePublicationsScreen extends StatelessWidget {
  final List<Map<String, String>> _publications = [
    {
      'title': 'Vehículo 1',
      'description': 'Descripción del Vehículo 1',
    },
    {
      'title': 'Vehículo 2',
      'description': 'Descripción del Vehículo 2',
    },
    {
      'title': 'Vehículo 3',
      'description': 'Descripción del Vehículo 3',
    },
  ];

  void _editPublication(BuildContext context, int index) {
    // Aquí puedes añadir la lógica para editar la publicación
    print('Edit publication $index');
  }

  void _deletePublication(BuildContext context, int index) {
    // Aquí puedes añadir la lógica para eliminar la publicación
    print('Delete publication $index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Publicaciones', style: TextStyle(color: Colors.orange)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: ListView.builder(
        itemCount: _publications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              title: Text(
                _publications[index]['title']!,
                style: TextStyle(color: Colors.orange, fontFamily: 'Pixel', fontSize: 18),
              ),
              subtitle: Text(
                _publications[index]['description']!,
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _editPublication(context, index),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deletePublication(context, index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
