class Movie {
  final String title;
  final String year;
  final String imdbID;
  final String type;
  final String poster;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String actors;

  Movie(
      {required this.title,
      required this.year,
      required this.imdbID,
      required this.type,
      required this.poster,
      required this.rated,
      required this.released,
      required this.runtime,
      required this.genre,
      required this.director,
      required this.actors});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'] ?? "",
      year: json['Year'],
      imdbID: json['imdbID'] ?? "",
      type: json['Type'],
      poster: json['Poster'],
      rated: json['Rated'] ?? "",
      released: json['Released'] ?? "",
      runtime: json['Runtime'] ?? "",
      genre: json['Genre'] ?? "",
      director: json['Director'] ?? "",
      actors: json['Actors'] ?? "",
    );
  }
}
