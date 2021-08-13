import 'package:detail_info/src/models/movie_detail_model.dart';
import 'package:detail_info/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieDetailBloc{
  final _repository = Repository();
  final _movieDetailFetcher = PublishSubject<MovieDetailModel>();

  Stream<MovieDetailModel> get getMovieDetail => _movieDetailFetcher.stream;

  fetchMovieDetail(movieId) async{
    MovieDetailModel detailModel = await _repository.fetchMovieDetail(movieId.toString());
    _movieDetailFetcher.sink.add(detailModel);
  }

  dispose(){
    _movieDetailFetcher.close();
  }
}

final movieDetailBloc = MovieDetailBloc();