import 'package:detail_info/src/blocks/popular_movie_list_bloc.dart';
import 'package:detail_info/src/models/movie_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../movie_detail_screen.dart';

class PopularMovieList extends StatefulWidget {
  final String type;

  const PopularMovieList({Key? key, required this.type}) : super(key: key);

  @override
  _PopularMovieListState createState() => _PopularMovieListState();
}

class _PopularMovieListState extends State<PopularMovieList> {

  @override
  Widget build(BuildContext context) {
    popularMovieListBloc.fetchMovieList(widget.type);
    return StreamBuilder(
        stream: popularMovieListBloc.getAllMovieList,
        builder: (context, AsyncSnapshot<MovieListModel> snapshot) {
          if (snapshot.hasData) {
            return buildContent(snapshot, context);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Container(
              padding: EdgeInsets.all(20.0),
              child: Center(child: CircularProgressIndicator()));
        });
  }

  buildContent(AsyncSnapshot<MovieListModel> snapshot, BuildContext context) {
    return
    Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.width/1.8,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: snapshot.data!.results!.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: _buildItem(snapshot.data!.results![index].posterPath!,snapshot.data!.results![index].id!));
          }),
    );
  }
  _buildItem(String imagePath,int movieId){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=>MovieDetailScreen(movieId: movieId,)));
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Image.network('https://image.tmdb.org/t/p/w500$imagePath',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width/3,
        height: MediaQuery.of(context).size.width/1.3,
        ),
      ),
    );
  }
}
