import 'package:school_app/core/constants/app_packages.dart';
import 'package:dartz/dartz.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Either<StatusRequest, Map>> _handleRequest(
    Future<Response<dynamic>> request,
  ) async {
    if (await checkInternet()) {
      try {
        final response = await request;

        if (response.statusCode == 200) {
          final responseBody = response.data;

          if (responseBody.containsKey('status') &&
              responseBody['status'] == 0) {
            return Right(responseBody);
          } else {
            return const Left(StatusRequest.failure);
          }
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } catch (e) {
        print('Error in handling request: $e');
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }

  //A function for GET request
  Future<Either<StatusRequest, Map>> getData(
    final String linkUrl, [
    final String? token,
  ]) async {
    return _handleRequest(
      _dio.get(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
      ),
    );
  }

  //A function for POST request
  Future<Either<StatusRequest, Map>> postData(
    final String linkUrl,
    final Map body, [
    final String? token,
  ]) async {
    return _handleRequest(
      _dio.post(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
        data: body,
      ),
    );
  }

  //A function for PATCH request
  Future<Either<StatusRequest, Map>> updateData(
    final String linkUrl,
    final Map body, [
    final String? token,
  ]) async {
    return _handleRequest(
      _dio.patch(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
        data: body,
      ),
    );
  }

  //A function for PUT request
  Future<Either<StatusRequest, Map>> putData(
    final String linkUrl,
    final Map body, [
    final String? token,
  ]) async {
    return _handleRequest(
      _dio.put(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
        data: body,
      ),
    );
  }
}
