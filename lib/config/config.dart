import 'package:flutter_dotenv/flutter_dotenv.dart';


class Config {
  
  static final String spUrl = dotenv.env['SUPABASE_URL'] ?? '';
  static final String spKey = dotenv.env['SUPABASE_ANON_KEY'] ?? '';
}

