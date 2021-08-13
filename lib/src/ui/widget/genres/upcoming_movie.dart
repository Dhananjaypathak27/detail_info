import 'package:carousel_slider/carousel_slider.dart';
import 'package:detail_info/src/blocks/upcoming_movie_bloc.dart';
import 'package:detail_info/src/models/upcoming_movie_model.dart';
import 'package:detail_info/src/ui/widget/movie_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingMovie extends StatefulWidget {
  final String type;

  const UpcomingMovie({Key? key, required this.type}) : super(key: key);

  @override
  _UpcomingMovieState createState() => _UpcomingMovieState();
}

class _UpcomingMovieState extends State<UpcomingMovie> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    upcomingMovieListBloc.fetchMovieDetail(widget.type);
    return StreamBuilder(
        stream: upcomingMovieListBloc.getMovieDetail,
        builder: (context, AsyncSnapshot<UpcomingMovieModel> snapshot) {
          if (snapshot.hasData) {
            return _carouselBody(snapshot, context);
          }

          return Container(
              padding: EdgeInsets.all(20.0),
              child: Center(child: CircularProgressIndicator()));
        });
  }

  Widget _carouselBody(
      AsyncSnapshot<UpcomingMovieModel> list, BuildContext context) {
    return CarouselSlider(
      items: list.data!.results!.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: (){
                debugPrint('on tab');
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MovieDetailScreen(movieId: i.id,)));
              },
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${i.posterPath}',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ))
                ],
              ),
            );
          },
        );
      }).toList(),
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
