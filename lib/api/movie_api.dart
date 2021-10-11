import 'package:api_project/models/movie_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MovieAPI {
  static Future<List<Movie>> getMovies() async {
    http.Response response = await http.get(Uri.parse(
        "https://www.omdbapi.com/?s=Batman&page=2&apikey=5b51f6b1&plot=full"));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      List<Movie> movies;
      movies =
          (result["Search"] as List).map((e) => Movie.fromJson(e)).toList();
      return movies;
    } else {
      throw Exception('Failed to load of aplication');
    }
  }
}
