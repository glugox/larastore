// Make this a singleton class
import 'package:dio/dio.dart';
import 'package:larastore/api_options.dart';

class Http {
  // Singleton instance
  static final Http _singleton = Http._internal();

  // A private constructor. Allows us to create instances of Http
  // only from within the Http class itself.
  Http._internal();

  static Dio? _dio;

  Dio get dio {
    _dio ??= _createDio();
    return _dio!;
  }

  // Singleton accessor
  static Http get instance => _singleton;

  ApiOptions? _options;

  void initialize({required ApiOptions options}) {
    _options = options;
  }

  // Make this a singleton class
  Dio _createDio() {

    // Http.initialize() must be called to init http with options,
    // if not called , before calling Http.instance, throw an error.
    if(_options == null){
      throw Exception("Please call Http.initialize before using the Http class ( Http.instance )");
    }

    var dio = Dio(
      BaseOptions(
        validateStatus: (int? status) {
          return status != null && status > 0;
        },
        baseUrl: _options!.apiBaseUrl,
        headers: {
          'accept': 'application/json',
          'content-type': 'application/json'
        },
        responseType: ResponseType.json,
      ),
    );

    return dio;
  }
}
