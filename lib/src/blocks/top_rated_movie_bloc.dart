import 'package:detail_info/src/models/movie_list_model.dart';
import 'package:detail_info/src/resources/repository.dart';
import 'package:detail_info/src/ui/widget/genres/popular_movie_list.dart';
import 'package:rxdart/rxdart.dart';

class TopRatedMovieBloc{
  final _repository = Repository();
  final _movieListFetcher = PublishSubject<MovieListModel>();

  Stream<MovieListModel> get getAllTopRatedMovie => _movieListFetcher.stream;

  fetchMovieList(type) async{
    MovieListModel listModel = await _repository.fetchTopRatedMovieList(type);
    _movieListFetcher.sink.add(listModel);
  }

  dispose(){
    _movieListFetcher.close();
}
}

final topRatedMovieListBloc = TopRatedMovieBloc();