import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> printBbCharacters() async {
  try {
    var resp =
        await http.get(Uri.parse('https://breakingbadapi.com/api/characters'));
    var data = jsonDecode(resp.body);

    for (var i = 0; i < data.length; i++) {
      print(data[i]['name']);
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
