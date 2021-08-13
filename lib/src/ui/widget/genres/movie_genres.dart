import 'package:detail_info/src/blocks/movie_genres_bloc.dart';
import 'package:detail_info/src/models/genres_movie_model1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieGenres extends StatefulWidget {
  const MovieGenres({Key? key}) : super(key: key);

  @override
  _MovieGenresState createState() => _MovieGenresState();
}

class _MovieGenresState extends State<MovieGenres> {

  @override
  Widget build(BuildContext context) {
    movieGenresBlock.fetchAllGenres();
    return StreamBuilder(
      stream:movieGenresBlock.getAllGenres,
      builder: (BuildContext context, AsyncSnapshot<GenresMovieModel1> snapshot) {
        if (snapshot.hasData) {
          return buildList(snapshot);
        }
        else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        return Center(child: CircularProgressIndicator());
      },);
  }

  Widget buildList(AsyncSnapshot<GenresMovieModel1> snapshot) {
    return Container(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: snapshot.data?.genres!.length,
          itemBuilder: (context,index){
            return  _buildItem(snapshot.data!.genres![index].name);
          }),
    );
  }

  _buildItem(String? name){
    return
    Container(
      height: 100,
      margin: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: NetworkImage('https://images.all-free-download.com/images/graphicthumb/red_shading_background_05_hd_pictures_169759.jpg')
              )
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(name != null? name: "test" )),
        ],
      ),
    );
  }
}
