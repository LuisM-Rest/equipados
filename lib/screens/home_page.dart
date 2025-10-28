import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/contador_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/widgets/boton1.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final contador = context.watch<ContadorProvider>().contador;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio (Contador: $contador)'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<ContadorProvider>().reiniciar();
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Boton1(
              texto: "Ir a Página 1",
              icono: Icons.arrow_forward,
              onPressed: () {
                Navigator.pushNamed(context, '/pagina1');
              },
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Boton1(
              texto: "Ir a Página 2",
              icono: Icons.arrow_forward,
              onPressed: () {
                Navigator.pushNamed(context, '/pagina2');
              },
            ),
          ),
        ],
      ),
    );
  }
}
