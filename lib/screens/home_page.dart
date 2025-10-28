import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalle de movimientos', style: TextStyle(fontSize: 15),),
       actions: [
        IconButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey
          ),
          color: Colors.amberAccent,
          iconSize: 26,          
          onPressed: () {
          Navigator.pushNamed(context, '/plantillaPpto');
        },
        icon: Icon(Icons.abc_outlined)),
       ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
             
            },
            child: Text('Nuevo presupuesto'),
          ),
        ],
      ),
    );
  }
}
