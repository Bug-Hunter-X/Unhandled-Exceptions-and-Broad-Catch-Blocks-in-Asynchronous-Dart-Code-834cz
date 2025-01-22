```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
      } catch (e) {
        print('An unexpected error occurred while processing the JSON: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    print('Network request failed: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```