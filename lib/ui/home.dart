import 'package:flutter/material.dart';

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
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
        title: Text("PSBD APP"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("M"),
                ),
              ),
              trailing: Text("Tap Here..."),
              title: Text(movies[index]),
              subtitle: Text("Details"),
              onTap: () => debugPrint("Movie Name: ${movies.elementAt(index)}"),
            ),
          );
        },
      ),
    );
  }
}
