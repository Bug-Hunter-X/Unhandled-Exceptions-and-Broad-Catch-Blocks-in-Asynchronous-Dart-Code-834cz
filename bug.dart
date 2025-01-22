```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here. Note that we are not handling any potential errors
      // during JSON decoding which could lead to exceptions.
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block is too broad, it will catch all exceptions even ones
    // not related to network requests, obscuring potential issues.
    print('Error: $e');
  }
}
```