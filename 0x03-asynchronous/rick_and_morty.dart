import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // Define the API URL
    final url = Uri.parse('https://rickandmortyapi.com/api/character');

    // Send a GET request to the API
    final response = await http.get(url);

    // Check if the response status is OK
    if (response.statusCode == 200) {
      // Decode the JSON response
      final data = json.decode(response.body);

      // Extract character names and print them
      final characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw 'Failed to load characters';
    }
  } catch (error) {
    print('error caught: $error');
  }
}

void main() async {
  await printRmCharacters();
}
