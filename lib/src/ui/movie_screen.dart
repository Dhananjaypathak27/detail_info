import 'package:detail_info/src/ui/widget/genres/movie_genres.dart';
import 'package:detail_info/src/ui/widget/genres/popular_movie_list.dart';
import 'package:detail_info/src/ui/widget/genres/top_rated_movie_list.dart';
import 'package:detail_info/src/ui/widget/genres/upcoming_movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Info"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20,),
            UpcomingMovie(type: "upcoming"),
            SizedBox(height: 20,),
            MovieGenres(),
            SizedBox(height: 20,),
            _popularMovie(),
            SizedBox(height: 20,),
            _toRatedMovie()
          ],
        ),
      ),
    );
  }

  _popularMovie(){
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Movie",style: GoogleFonts.roboto(fontSize: 16),),
                Icon(Icons.arrow_forward,size: 20,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          PopularMovieList(type: 'popular'),
        ],
      ),
    );
  }

  _toRatedMovie(){
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Rated Movie",style: GoogleFonts.roboto(fontSize: 16),),
                Icon(Icons.arrow_forward,size: 20,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          TopRatedMovieList(type: 'top_rated'),
        ],
      ),
    );
  }
}
