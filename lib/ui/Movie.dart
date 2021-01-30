class Movie {
  static List<Movie> getMovies() => [
        Movie(
            "Avatar",
            "2009",
            "18 dec 2009",
            "162 min",
            "Acton",
            "James Cameron",
            "James Cameron",
            "Cris Hamsworth",
            "nice",
            "USA",
            "Win 3 oscar",
            "7.9",
            "1116899",
            "tt4622964",
            "movie",
            "True", [
          "https://flxt.tmsimg.com/assets/p3542039_p_v8_ac.jpg",
          "https://www.indiewire.com/wp-content/uploads/2019/12/avatar-2.jpg",
          "https://www.slashfilm.com/wp/wp-content/images/avatar-2-story.jpg"
        ]),
        Movie(
            "A Beautyful Mind",
            "2009",
            "18 dec 2009",
            "162 min",
            "Acton",
            "James Cameron",
            "James Cameron",
            "Cris Hamsworth",
            "nice",
            "USA",
            "Win 3 oscar",
            "7.9",
            "1116899",
            "tt4622964",
            "movie",
            "True", [
          "https://i0.wp.com/the-art-of-autism.com/wp-content/uploads/2020/06/A-Beautiful-Mind.jpg?fit=683%2C1024&ssl=1",
          "https://www.indiewire.com/wp-content/uploads/2019/12/avatar-2.jpg",
          "https://www.slashfilm.com/wp/wp-content/images/avatar-2-story.jpg"
        ]),
        Movie(
            "Shashank Redumption",
            "2009",
            "18 dec 2009",
            "162 min",
            "Acton",
            "James Cameron",
            "James Cameron",
            "Cris Hamsworth",
            "nice",
            "USA",
            "Win 3 oscar",
            "7.9",
            "1116899",
            "tt4622964",
            "movie",
            "True", [
          "https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg",
          "https://www.indiewire.com/wp-content/uploads/2019/12/avatar-2.jpg",
          "https://www.slashfilm.com/wp/wp-content/images/avatar-2-story.jpg"
        ])
      ];

  String title;
  String year;
  String released;
  String runtime;
  String genre;
  String directory;
  String writer;
  String actors;
  String plot;
  String language;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbID;
  String type;
  String response;
  List<String> images;
  Movie(
    this.title,
    this.year,
    this.released,
    this.runtime,
    this.genre,
    this.directory,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.type,
    this.response,
    this.images,
  );
}
