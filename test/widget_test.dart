import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("https://api.rajaongkir.com/starter/cost");
  final response = await http.post(
    url,
    body: {
      "origin": "501",
      "destination": "114",
      "weight": "1700",
      "courier": "jne",
    },
    headers: {
      "key": "1e05552c3337d4d2dcd7e6bd3e0456cb",
      "content-type": "application/x-www-form-urlencoded",
    },
  );

  print(response.body);
}
