
import 'dart:convert';
import 'package:detail_info/src/models/genres_movie_model1.dart';
import 'package:detail_info/src/models/movie_detail_model.dart';
import 'package:detail_info/src/models/movie_list_model.dart';
import 'package:detail_info/src/models/upcoming_movie_model.dart';
import 'package:http/http.dart' show Client;

class MovieApiProvider{
  Client client = Client();
  final _apiKey = "39bede40cc74e996e3a81d3fc9faeb7d";
  final _baseUrl = "api.themoviedb.org";

  Future<GenresMovieModel1> fetchGenresMovie() async{
    print("fetch genres movie");

    final queryParameters = {
      'api_key': _apiKey,
      'language': 'en-US',
    };

    final response = await client.get(Uri.http(_baseUrl,"/3/genre/movie/list",queryParameters));

    print("response data"+response.body.toString());
    if(response.statusCode == 200){
    return GenresMovieModel1.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Failed to load Data');
    }

  }

  Future<MovieListModel> fetchPopularMovieList(String type) async{
    print('movie list popular');
    final queryParameters = {
      'api_key': _apiKey,
      'language': 'en-US',
      'page': '1'
    };

    final response = await client.get(Uri.https(_baseUrl,"/3/movie/$type",queryParameters));
    print(response.request!.url);
    print(response.body.toString());
    if(response.statusCode == 200){
      return MovieListModel.fromJson(response.body);
    }
    else{
      throw Exception('Failed to load post');
    }
  }

  Future<MovieListModel> fetchTopRatedMovieList(String type) async{
    print('topRated list popular');
    final queryParameters = {
      'api_key': _apiKey,
      'language': 'en-US',
      'page': '1'
    };

    final response = await client.get(Uri.https(_baseUrl,"/3/movie/$type",queryParameters));
    print(response.request!.url);
    print(response.body.toString());
    if(response.statusCode == 200){
      return MovieListModel.fromJson(response.body);
    }
    else{
      throw Exception('Failed to load post');
    }
  }

  Future<MovieDetailModel> fetchMovieDetail(String movieId) async{
    // print('topRated list popular');
    final queryParameters = {
      'api_key': _apiKey,
      'language': 'en-US',
      // 'page': '1'
    };

    final response = await client.get(Uri.https(_baseUrl,"/3/movie/$movieId",queryParameters));
    print(response.request!.url);
    print(response.body.toString());
    if(response.statusCode == 200){
      return MovieDetailModel.fromJson(response.body);
    }
    else{
      throw Exception('Failed to load post');
    }
  }


  Future<UpcomingMovieModel> fetchUpcomingMovieList(String type) async{
    print('movie list popular');
    final queryParameters = {
      'api_key': _apiKey,
      'language': 'en-US',
      'page': '1'
    };

    final response = await client.get(Uri.https(_baseUrl,"/3/movie/$type",queryParameters));
    print(response.request!.url);
    print(response.body.toString());
    if(response.statusCode == 200){
      return UpcomingMovieModel.fromJson(response.body);
    }
    else{
      throw Exception('Failed to load post');
    }
  }
}