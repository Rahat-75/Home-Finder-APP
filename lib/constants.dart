import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String get domain => dotenv.env['SERVER_DOMAIN'] ?? 'https://homefinder-backend.onrender.com';
  static String get localhost => dotenv.env['SERVER_LOCALHOST'] ?? 'http://10.0.2.2:3000';
  static String get server => dotenv.env['SERVER_URL'] ?? 'https://homefinder-backend.onrender.com';
}
