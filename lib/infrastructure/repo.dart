import 'dart:convert';

import 'package:apicrud/domain/core/apiEndPoints.dart';
import 'package:apicrud/domain/core/failure.dart';
import 'package:apicrud/domain/iRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:apicrud/domain/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRepo)
class Repo implements IRepo {
  @override
  Future<Either<Failure, String>> create(Models model) async {
    // TODO: implement create
    try {
      var client = http.Client();
      var url = Uri.parse(ApiEndPoints.endPoint);
      http.Response response = await client.post(url,
        
          body: jsonEncode(model.toJson()));
      print(response.statusCode.toString() + response.body.toString());
      if (response.statusCode == 201) {
        return Right('success');
      } else {
        return Left(Failure.ClientFailure());
      }
    } catch (e) {
      print(e.toString() + 'catch block');
      return Left(Failure.ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> delete(int id) async {
    // TODO: implement delete
    try {
      var client = http.Client();
      var url =
          Uri.parse(ApiEndPoints.endPoint.toString() + id.toString() + "/");
      var response = await client.delete(
        url,
      );
      if (response.statusCode == 204) {
        return Right('success');
      } else {
        return Left(Failure.ClientFailure());
      }
    } catch (e) {
      print(e.toString());
      return Left(Failure.ServerFailure());
    }
  }

  @override
  Stream<Either<Failure, List<Models>>> read() async* {
    try {
      var client = http.Client();
      var url = Uri.parse(ApiEndPoints.endPoint);
      http.Response response = await client.get(url);
      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        final result = data.map(
          (e) {
            return Models.fromJson(e);
          },
        ).toList();
      
        yield  Right(result);
      } else {
        yield Left(Failure.ClientFailure());
      }
    } catch (e) {
      print(e.toString());
      yield Left(Failure.ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> update(Models model) async {
    // TODO: implement update
    try {
      var client = http.Client();
      var url = Uri.parse(
          ApiEndPoints.endPoint.toString() + model.id.toString() + "/");
      var response = await client.put(url, body: model.toJson());
      if (response.statusCode == 201) {
        return Right('success');
      } else {
        return Left(Failure.ClientFailure());
      }
    } catch (e) {
      print(e.toString());
      return Left(Failure.ServerFailure());
    }
  }
}
