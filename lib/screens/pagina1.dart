import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/contador_provider.dart';
import 'package:provider/provider.dart';


class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    final contador = context.watch<ContadorProvider>().contador;

    return Scaffold(
      appBar: AppBar(title: const Text('Página 1'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valor del contador: $contador',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                context.read<ContadorProvider>().incrementar();
              },
              icon: const Icon(Icons.add),
              label: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
