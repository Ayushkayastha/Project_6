import 'package:dio/dio.dart';
import 'package:project6/config/api_endpoints.dart';
import 'HotelModel.dart';

class NetworkRequest {
  final dio = Dio();

  Future<HotelModel?> hotelmodel() async {
    try {
      final response = await dio.get(ApiEndpoints.details);


      if (response.statusCode == 200 || response.statusCode == 201) {
        // Success
        print('joke');
        print(response);
        return HotelModel.fromJson(response.data);
      }

      else {
        // Failure
        print('Failed to load data: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // Handle any other errors, like network issues
      print('Error occurred catch bhitra: $e');
      return null;
    }
  }
}
