
class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, this.rating);

  Movie.defaultRating(this.title, this.studio)
      : rating = "PG";

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];

    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating.contains("PG")) {
        result.add(movies[i]);
      }
    }

    return result;
  }
}

