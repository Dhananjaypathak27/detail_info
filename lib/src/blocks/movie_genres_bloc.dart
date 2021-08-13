
import 'package:detail_info/src/models/genres_movie_model1.dart';
import 'package:detail_info/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';


class MovieGenresBloc{
  final _repository = Repository();
  final _movieFetcher = PublishSubject<GenresMovieModel1>();

  Stream<GenresMovieModel1> get getAllGenres => _movieFetcher.stream;

  fetchAllGenres() async{
    GenresMovieModel1 genresMovieModel =await _repository.fetchMovieGenres();
    _movieFetcher.sink.add(genresMovieModel);
  }

  dispose(){
    _movieFetcher.close();
  }

}

final movieGenresBlock =MovieGenresBloc();