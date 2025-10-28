import 'package:equipados/core/exports.dart';
import 'package:equipados/provider/auth_provider.dart';
import 'package:equipados/screens/plantilla_presupuestos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Carga las variables del archivo .env
  //await dotenv.load();
  await dotenv.load(fileName: ".env");

  //Iniciar supabase con claves
  await Supabase.initialize(url: Config.spUrl, anonKey: Config.spKey);

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Equipados',
      theme: AppTheme.lightTheme,
      initialRoute: '/login', //Inicial en el login
      routes: {
        '/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
        '/plantillaPpto': (_) => const PlantillaPresupuestos()
      },
    );
  }
}
