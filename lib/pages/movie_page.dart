import 'package:api_project/components/Movie_component.dart';
import 'package:api_project/models/movie_model.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  final List<Movie> lista;

  MoviePage({Key? key, required this.lista}) : super(key: key);

  @override
  _MovieCompanhiaPageState createState() => _MovieCompanhiaPageState();
}

class _MovieCompanhiaPageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Expanded(
        child: ListView.separated(
            itemBuilder: (ctx, i) => MovieComponent(
                  movie: widget.lista.elementAt(i),
                ),
            padding: const EdgeInsets.all(10),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: widget.lista.length),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
