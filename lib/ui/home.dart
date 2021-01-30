import 'package:MovieApp/ui/Movie.dart';
import 'package:flutter/material.dart';

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  final List<Movie> movieList = Movie.getMovies();

  final List movies = [
    "Shawshak Rrdumption",
    "Baba Keno Gorib",
    "1 takar Bou",
    "300",
    "Colie Num. 1",
    "DilWale Dulhania Le jayengey Hum",
    "Shawshak Rrdumption",
    "Shawshak Rrdumption",
    "Dr. Syed Akter Hossain",
    "Shawshak Rrdumption",
    "Shawshak Rrdumption",
    "Khalar Ranna",
    "1 takar Bou",
    "300",
    "Colie Num. 1",
    "DilWale Dulhania Le jayengey Hum",
    "Shawshak Rrdumption",
    "Shawshak Rrdumption",
    "Dr. Syed Akter Hossain",
    "Shawshak Rrdumption",
    "Shawshak Rrdumption",
    "Khalar Ranna",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PSBD MOVIE APP"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              movieCard(movieList[index], context),
              Positioned(
                top: 10.0,
                child: imageUrl(movieList[index].images[0]),
              )
            ],
          );
          // return Card(
          //   elevation: 10,
          //   color: Colors.white,
          //   child: ListTile(
          //     leading: CircleAvatar(
          //       child: Container(
          //         width: 200,
          //         height: 200,
          //         decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: NetworkImage(movieList[index].images[0]),
          //                 fit: BoxFit.cover),
          //             color: Colors.blueGrey,
          //             borderRadius: BorderRadius.circular(15)),
          //         child: null,
          //       ),
          //     ),
          //     trailing: Text("Tap Here..."),
          //     title: Text(movieList[index].title),
          //     subtitle: Text(movieList[index].title),
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => MovieApp2ndpage(
          //                     movieName: movieList.elementAt(index).title,
          //                     movie: movieList[index],
          //                   )));
          //     },
          //     //onTap: () => debugPrint("Movie Name: ${movies.elementAt(index)}"),
          //   ),
          // );
        },
      ),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movie.title,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Rating: ${movie.imdbRating} / 10",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Release Date: ${movie.imdbRating} / 10",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        movie.runtime,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        movie.response,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieApp2ndpage(
                      movieName: movie.title,
                      movie: movie,
                    )));
      },
    );
  }

  Widget imageUrl(String imageUrl) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageUrl ??
                'https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }
}

class MovieApp2ndpage extends StatelessWidget {
  final String movieName;
  final Movie movie;

  const MovieApp2ndpage({Key key, this.movieName, this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PSBD Movie Details"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: RaisedButton(
              child: Text("Back Page ${this.movie.directory}"),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
    );
  }
}
