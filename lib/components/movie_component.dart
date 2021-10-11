import 'package:api_project/models/movie_model.dart';
import 'package:flutter/material.dart';

class MovieComponent extends StatefulWidget {
  final Movie movie;

  MovieComponent({Key? key, required this.movie});
  @override
  _MovieComponentState createState() => _MovieComponentState();
}

class _MovieComponentState extends State<MovieComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(widget.movie.poster),
      title: Text(
        widget.movie.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(widget.movie.year),
    );
  }
}
