import 'package:api_project/models/post_models.dart';
import 'package:flutter/material.dart';

class PostComponent extends StatefulWidget {
  final Post post;

  PostComponent({Key? key, required this.post});
  @override
  _PostComponentState createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.book, color: Colors.blue),
      title: Text(
        widget.post.title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
      ),
    );
  }
}
