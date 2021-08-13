import 'package:detail_info/src/models/movie_list_model.dart';
import 'package:detail_info/src/resources/repository.dart';
import 'package:detail_info/src/ui/widget/genres/popular_movie_list.dart';
import 'package:rxdart/rxdart.dart';

class PopularMovieListBloc{
  final _repository = Repository();
  final _movieListFetcher = PublishSubject<MovieListModel>();

  Stream<MovieListModel> get getAllMovieList => _movieListFetcher.stream;

  fetchMovieList(type) async {
    MovieListModel listModel = await _repository.fetchPopularMovieList(type);
    _movieListFetcher.sink.add(listModel);
  }

  dispose(){
    _movieListFetcher.close();
  }
}

final popularMovieListBloc = PopularMovieListBloc();