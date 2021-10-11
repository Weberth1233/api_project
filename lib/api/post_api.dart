import 'dart:convert';
import 'package:api_project/models/post_models.dart';
import 'package:http/http.dart' as http;

class API {
  static Future<List<Post>> getPosts() async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts")); //url
    if (response.statusCode == 200) {
      List<Post> postList;
      postList = (json.decode(response.body) as List)
          .map((i) => Post.fromJson(i))
          .toList();
      return postList;
    } else {
      throw Exception('Failed to load campaigns');
    }
  }
}
