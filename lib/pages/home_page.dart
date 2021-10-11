import 'package:api_project/api/post_api.dart';
import 'package:api_project/models/post_models.dart';
import 'package:api_project/pages/post_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*Future<Post> fetchPost() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('Falha no carregamento do post');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: API.getPosts(),
        builder: (context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            return PostPage(lista: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
