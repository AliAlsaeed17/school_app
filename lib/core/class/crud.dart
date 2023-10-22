import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:school_app/core/constants/app_packages.dart';

class Crud {
  final dio = Dio();
  //A function through which data can be post and get
  Future<Either<StatusRequest, Map>> postData(
    final String linkUrl,
    final Map body, [
    final String? token,
  ]) async {
    //Test the presence of an Internet connection
    if (await checkInternet()) {
      var response = await dio.post(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
        data: body,
      );

      //Test the status of the API connection
      if (response.statusCode == 200) {
        final Map responseBody = jsonDecode(response.data);

        //Test if the operation was completed successfully
        final bool failure =
            !responseBody.containsKey('status') || responseBody['status'] == 0;
        if (failure) {
          appSnackBar(title: 'فشل', message: responseBody['message']);
          return const Left(StatusRequest.failure);
        } else {
          appSnackBar(title: 'نجاح', message: responseBody['message']);
          return Right(responseBody);
        }
      } else {
        appSnackBar(title: 'فشل', message: 'حدث خطأ ما');
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      appSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
      return const Left(StatusRequest.offlinefailure);
    }
  }

//----------------------------------------------------------------

  //A function through which data can be get
  Future<Either<StatusRequest, Map>> getData(
    final String linkUrl, [
    final String? token,
  ]) async {
    //Test the presence of an Internet connection
    if (await checkInternet()) {
      var response = await dio.get(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
      );

      //Test the status of the API connection
      if (response.statusCode == 200) {
        final Map responseBody = jsonDecode(response.data);

        //Test if the operation was completed successfully
        final bool failure =
            !responseBody.containsKey('status') || responseBody['status'] == 0;
        if (failure) {
          appSnackBar(title: 'فشل', message: responseBody['message']);
          return const Left(StatusRequest.failure);
        } else {
          appSnackBar(title: 'نجاح', message: responseBody['message']);
          return Right(responseBody);
        }
      } else {
        appSnackBar(title: 'فشل', message: 'حدث خطأ ما');
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      appSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
      return const Left(StatusRequest.offlinefailure);
    }
  }

//----------------------------------------------------------------

  //A function through which data can be deleted
  Future<Either<StatusRequest, Map>> deletedData(
    final String linkUrl, [
    final String? token,
  ]) async {
    //Test the presence of an Internet connection
    if (await checkInternet()) {
      var response = await dio.delete(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
      );

      //Test the status of the API connection
      if (response.statusCode == 200) {
        final Map responseBody = jsonDecode(response.data);

        //Test if the operation was completed successfully
        final bool failure =
            !responseBody.containsKey('status') || responseBody['status'] == 0;
        if (failure) {
          appSnackBar(title: 'فشل', message: responseBody['message']);
          return const Left(StatusRequest.failure);
        } else {
          appSnackBar(title: 'نجاح', message: responseBody['message']);
          return Right(responseBody);
        }
      } else {
        appSnackBar(title: 'فشل', message: 'حدث خطأ ما');
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      appSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
      return const Left(StatusRequest.offlinefailure);
    }
  }

//----------------------------------------------------------------

  //A function through which data can be updated
  Future<Either<StatusRequest, Map>> updateData(
    final String linkUrl,
    final Map body, [
    final String? token,
  ]) async {
    //Test the presence of an Internet connection
    if (await checkInternet()) {
      var response = await dio.patch(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
        data: body,
      );

      //Test the status of the API connection
      if (response.statusCode == 200) {
        final Map responseBody = jsonDecode(response.data);

        //Test if the operation was completed successfully
        final bool failure =
            !responseBody.containsKey('status') || responseBody['status'] == 0;
        if (failure) {
          appSnackBar(title: 'فشل', message: responseBody['message']);
          return const Left(StatusRequest.failure);
        } else {
          appSnackBar(title: 'نجاح', message: responseBody['message']);
          return Right(responseBody);
        }
      } else {
        appSnackBar(title: 'فشل', message: 'حدث خطأ ما');
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      appSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
      return const Left(StatusRequest.offlinefailure);
    }
  }

//----------------------------------------------------------------

  //A function through which data can be modified or put
  Future<Either<StatusRequest, Map>> putData(
    final String linkUrl,
    final Map body, [
    final String? token,
  ]) async {
    //Test the presence of an Internet connection
    if (await checkInternet()) {
      var response = await dio.put(
        linkUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'app_key': 'base64:YlhNyQ51txR9cBTfCYz1m1Oo14nmX3agx5r2mQLHkRc=',
            if (token != null) 'Token': token,
          },
        ),
        data: body,
      );

      //Test the status of the API connection
      if (response.statusCode == 200) {
        final Map responseBody = jsonDecode(response.data);

        //Test if the operation was completed successfully
        final bool failure =
            !responseBody.containsKey('status') || responseBody['status'] == 0;
        if (failure) {
          appSnackBar(title: 'فشل', message: responseBody['message']);
          return const Left(StatusRequest.failure);
        } else {
          appSnackBar(title: 'نجاح', message: responseBody['message']);
          return Right(responseBody);
        }
      } else {
        appSnackBar(title: 'فشل', message: 'حدث خطأ ما');
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      appSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
