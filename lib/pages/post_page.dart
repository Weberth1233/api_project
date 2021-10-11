import 'package:api_project/api/post_api.dart';
import 'package:api_project/components/post_component.dart';
import 'package:api_project/models/post_models.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  final List<Post> lista;

  PostPage({Key? key, required this.lista}) : super(key: key);

  @override
  _PostCompanhiaPageState createState() => _PostCompanhiaPageState();
}

class _PostCompanhiaPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Expanded(
        child: ListView.separated(
            itemBuilder: (ctx, i) => PostComponent(
                  post: widget.lista.elementAt(i),
                ),
            padding: const EdgeInsets.all(10),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: widget.lista.length),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
