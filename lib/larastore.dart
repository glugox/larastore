library larastore;


import 'package:larastore/api_options.dart';
import 'package:larastore/dataset.dart';
import 'package:larastore/http.dart';
import 'package:larastore/larastore_exception.dart';
import 'package:larastore/larastore_options.dart';

class Larastore {
  /// Larastore optionsfor this instance."
  LarastoreOptions options;

  static final Map<String, Larastore> _cachedInstances = {};

  /// The entry point for accessing a [Larastore].
  /// You can get an instance by calling [Larastore.instance]. 
  Larastore._({required this.options}) {
    if (options.baseUrl.endsWith('/')) {
      throw LarastoreException(message: 'baseUrl must not end with "/"');
    }
    _initialize();
  }

  /// Initilize aour http with props like base url
  void _initialize() {

    // Set some default parameters to http (Dio?)
    Http.instance.initialize(options: ApiOptions(apiBaseUrl: options.baseUrl));

    // Initialize dataset converter, so it can now how to parse data from api to dart and vice versa
    Dataset.initialize(converter: options.converter);
  }

  /// Returns the default instance if we have defined , so called [initialize] for only one api (url).
  /// If more then one apis are defined, this should not be called, and willl throw an error.
  /// In that case instanceFor should be used for specific api url.
  static Larastore get instance {
    if(_cachedInstances.isEmpty){
      throw LarastoreException(message: "Please call [initialize] method defore calling [instance] getter");
    }
    if(_cachedInstances.length > 1){
      throw LarastoreException(message: "You have initialized more than one api (urls). Please call [instanceFor] insted");
    }

    // Return the only instance
    return _cachedInstances.values.first;
  }


  /// Returns an instance.
  static Larastore instanceFor({
    required String baseUrl,
  }) {
  
    String cacheKey = baseUrl;
    if (_cachedInstances.containsKey(cacheKey)) {
      return _cachedInstances[cacheKey]!;
    }

    throw LarastoreException(message: "Instance for [baseUrl] not defined. Please call [initialize] method first");
  }

  /// Returns an instance.
  static Larastore initialize({
    required LarastoreOptions options,
  }) {
    String url = options.baseUrl;
    String cacheKey = url;
    if (_cachedInstances.containsKey(cacheKey)) {
      return _cachedInstances[cacheKey]!;
    }

    Larastore newInstance = Larastore._(options: options);
    _cachedInstances[cacheKey] = newInstance;

    return newInstance;
  }

  /// Returns a dataset object from API
  Future<Dataset> collection<T>(String resource) async {
    
    final response = await Http.instance.dio.get('${options.baseUrl}/$resource');
    if (response.statusCode == 200) {
      return Dataset.fromJson<T>(response.data);
    } else {
      // Handle API errors
      throw LarastoreException(message: 'Failed to get $resource: ${response..statusMessage}');
    }
  }
}
