import 'package:detail_info/src/models/upcoming_movie_model.dart';
import 'package:detail_info/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class UpcomingMovieBloc{
  final _repository = Repository();
  final _movieDetailFetcher = PublishSubject<UpcomingMovieModel>();

  Stream<UpcomingMovieModel> get getMovieDetail => _movieDetailFetcher.stream;

  fetchMovieDetail(type) async{
    UpcomingMovieModel listModel = await _repository.fetchUpcomingMovieList(type);
    _movieDetailFetcher.sink.add(listModel);
  }

  dispose(){
    _movieDetailFetcher.close();
  }


}

final upcomingMovieListBloc = UpcomingMovieBloc();