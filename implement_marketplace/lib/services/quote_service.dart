// lib/services/quote_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuoteService {
  static Future<Map<String, String>> fetchRandomQuote() async {
    try {
      final response = await http.get(
        Uri.parse("https://zenquotes.io/api/random"),
      );
      final data = jsonDecode(response.body)[0];
      return {'quote': data['q'], 'author': data['a']};
    } catch (e) {
      return {
        'quote': "Shopping is therapy.",
        'author': "Anonymous",
      }; // Fallback quote
    }
  }
}
