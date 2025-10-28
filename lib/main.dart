import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/contador_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/pagina1.dart';
import 'package:flutter_application_1/screens/pagina2.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ContadorProvider())],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/pagina1': (context) => Pagina1(),
          '/pagina2': (context) => const Pagina2(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
