import 'package:dio/dio.dart';
import 'package:netflix/model/movies.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://api.themoviedb.org/3';
  final String apiKey = '04cd82005e29c2c2064c610cb7b9b2bb';

  Future<List<Movie>> getNowPlayingdMovies() async {
    try {
      final response = await _dio.get('$baseUrl/movie_now_playing?$apiKey');
      var movies = response.data['results'] as List;
      List<Movie> movieList = movies.map((m) => Movie.fromJson(m)).toList();
      return movieList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception accoured: $error with stacktrace: $stacktrace');
    }
  }
}
