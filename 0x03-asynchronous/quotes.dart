import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<String> generateQuote(id) async {
  try {
    http.Response resp =
        await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'));
    var quotes = jsonDecode(resp.body);
    return "${quotes[0]['author']} : ${quotes[0]['quote']}";
  } catch (err) {
    return "There is no quotes";
  }
}
