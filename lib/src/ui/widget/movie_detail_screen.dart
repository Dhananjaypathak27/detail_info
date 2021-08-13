import 'package:detail_info/src/blocks/movie_detail_bloc.dart';
import 'package:detail_info/src/models/movie_detail_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailScreen extends StatefulWidget {
  final movieId;

  const MovieDetailScreen({Key? key, this.movieId}) : super(key: key);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    movieDetailBloc.fetchMovieDetail(widget.movieId);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _buildBody(context),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                centerTitle: true,
                brightness: Brightness.dark,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                iconTheme: IconThemeData(color: Colors.white),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      // body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder(
        stream: movieDetailBloc.getMovieDetail,
        builder: (context, AsyncSnapshot<MovieDetailModel> snapshot) {
          if (snapshot.hasData) {
            return buildContent(snapshot, context);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  Widget buildContent(
      AsyncSnapshot<MovieDetailModel> snapshot, BuildContext context) {
    return Container(
        child: Column(
      children: [
        _buildTopSection(context, snapshot.data!.backdropPath!),
        _buildBodySection(context, snapshot),
      ],
    ));
  }

  _buildTopSection(BuildContext context, String backdrop) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(70)),
              child: Image.network(
                "https://image.tmdb.org/t/p/w780$backdrop",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _iconLayout(),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: MediaQuery.of(context).size.width / 2 - 25,
          child: FractionalTranslation(
            translation: Offset(0.0, -0.5),
            child: FloatingActionButton(
              onPressed: () {
                print('Touch');
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.play_arrow,
                color: Colors.red,
                size: 40,
              ),
            ),
          ),
          // child: Icon(Icons.play_arrow,size: 200,color: Colors.white,)
        ),
      ],
    );
  }

  _iconLayout() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.add, color: Colors.white),
          Icon(
            Icons.share,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  _buildBodySection(
      BuildContext context, AsyncSnapshot<MovieDetailModel> snapshot) {
    return Column(
      children: [
        Text(
          snapshot.data!.originalTitle!,
          style: GoogleFonts.roboto(fontSize: 22),
        ),
        SizedBox(
          height: 15,
        ),
        _genresList(snapshot.data!.genres!),
        SizedBox(
          height: 15,
        ),
        _buildRating(snapshot.data!.voteAverage!),
        SizedBox(
          height: 15,
        ),
        _buildRowLayout(
            snapshot.data!.releaseDate!,
            snapshot.data!.productionCountries![0].iso31661!,
            snapshot.data!.runtime!),
        SizedBox(
          height: 15,
        ),
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              snapshot.data!.overview!,
              style: GoogleFonts.roboto(fontSize: 14,),
            ))
      ],
    );
  }

  _genresList(List<Genres> list) {
    String myText = "";
    for (Genres i in list) {
      myText += i.name! + ",";
    }
    return Container(
      child: Text(
        myText,
        style: GoogleFonts.aldrich(fontSize: 12, color: Colors.grey),
      ),
    );
  }

  _buildRating(double rating) {
    return StarRating(
      size: 25,
      rating: rating / 2,
      color: Colors.yellow[700],
      starCount: 5,
    );
  }

  _buildRowLayout(String releaseData, String countyName, int duration) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "year",
              style: GoogleFonts.aldrich(color: Colors.grey, fontSize: 14),
            ),
            Text(releaseData,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16))
          ],
        ),
        Column(
          children: [
            Text('Country',
                style: GoogleFonts.aldrich(color: Colors.grey, fontSize: 14)),
            Text(countyName,
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16))
          ],
        ),
        Column(
          children: [
            Text('Length',
                style: GoogleFonts.aldrich(color: Colors.grey, fontSize: 14)),
            Text('$duration min',
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16))
          ],
        )
      ],
    );
  }
}
