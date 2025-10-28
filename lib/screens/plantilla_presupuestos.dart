import 'package:flutter/material.dart';

void main() => runApp(const PlantillaPresupuestos());

class PlantillaPresupuestos extends StatelessWidget {
  const PlantillaPresupuestos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: const Center(child: Text('Hello World')),
    );
  }
}
