
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  File? image;

  Future pickImage() async {

    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("DTF Studio PRO")),
      body: Column(
        children: [

          Expanded(
            child: Center(
              child: image == null
                ? Text("Carga una imagen")
                : Image.file(image!),
            ),
          ),

          ElevatedButton(
            onPressed: pickImage,
            child: Text("Cargar Imagen"),
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text("Eliminar Fondo"),
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text("Optimizar para DTF"),
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text("Vectorizar"),
          ),

          ElevatedButton(
            onPressed: () {},
            child: Text("Generar Mockup"),
          ),

          SizedBox(height: 20)
        ],
      ),
    );
  }
}
