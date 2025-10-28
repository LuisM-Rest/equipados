import 'package:flutter/material.dart';

class ContadorProvider extends ChangeNotifier {
  int _contador = 0;
  int get contador => _contador;

  void incrementar() {
    _contador++;
    notifyListeners(); //Notifica a todos los widgets que escuchen este provider
  }

  void reiniciar() {
    _contador = 0;
    notifyListeners();
  }
}
