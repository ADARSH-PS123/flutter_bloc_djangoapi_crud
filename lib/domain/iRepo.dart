import 'package:apicrud/domain/core/failure.dart';
import 'package:apicrud/domain/models/models.dart';
import 'package:dartz/dartz.dart';

abstract class IRepo{
  Future<Either<Failure,String>>create(Models model);
    Future<Either<Failure,List<Models>>>read();
      Future<Either<Failure,String>>update(Models model);
        Future<Either<Failure,String>>delete(int id);
}
