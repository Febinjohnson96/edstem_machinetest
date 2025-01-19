import 'package:edstem_machinetest/core/utils/app_constants.dart';

class ApiEndpoints {
  ApiEndpoints._();
  static const String discoverMovies =
      "/v3/discover/movie?api_key=${AppConstants.apiKey}";
}
