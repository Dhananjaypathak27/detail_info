import 'package:detail_info/src/blocks/top_rated_movie_bloc.dart';
import 'package:detail_info/src/models/movie_list_model.dart';
import 'package:detail_info/src/ui/widget/movie_detail_screen.dart';
import 'package:flutter/material.dart';

class TopRatedMovieList extends StatefulWidget {
  final String type;

  const TopRatedMovieList({Key? key,required this.type}) : super(key: key);

  @override
  _TopRatedMovieListState createState() => _TopRatedMovieListState();
}

class _TopRatedMovieListState extends State<TopRatedMovieList> {
  @override

  Widget build(BuildContext context) {
    topRatedMovieListBloc.fetchMovieList(widget.type);
    return StreamBuilder(
        stream: topRatedMovieListBloc.getAllTopRatedMovie,
        builder: (context,AsyncSnapshot<MovieListModel> snapshot){
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
                  child: _buildItem(snapshot.data!.results![index].posterPath!,snapshot.data!.results![index].id));
            }),
      );
  }
  _buildItem(String imagePath,movieId){
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
