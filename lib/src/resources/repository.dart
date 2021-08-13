
import 'package:detail_info/src/models/genres_movie_model1.dart';
import 'package:detail_info/src/models/movie_detail_model.dart';
import 'package:detail_info/src/models/movie_list_model.dart';
import 'package:detail_info/src/models/upcoming_movie_model.dart';
import 'package:detail_info/src/resources/movie_api_provider.dart';

class Repository{
  final movieApiProvider = MovieApiProvider();

  Future<GenresMovieModel1> fetchMovieGenres() => movieApiProvider.fetchGenresMovie();

  Future<MovieListModel> fetchPopularMovieList(String type) => movieApiProvider.fetchPopularMovieList(type);

  Future<MovieListModel> fetchTopRatedMovieList(String type) => movieApiProvider.fetchTopRatedMovieList(type);

  Future<MovieDetailModel> fetchMovieDetail(String movieId) => movieApiProvider.fetchMovieDetail(movieId);

  Future<UpcomingMovieModel> fetchUpcomingMovieList(String type) => movieApiProvider.fetchUpcomingMovieList(type);
}