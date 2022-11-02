import 'package:apicrud/domain/core/failure.dart';
import 'package:apicrud/domain/iRepo.dart';
import 'package:apicrud/domain/models/models.dart';
import 'package:apicrud/infrastructure/repo.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_event.dart';
part 'my_state.dart';
part 'my_bloc.freezed.dart';

@injectable
class MyBloc extends Bloc<MyEvent, MyState> {
  Repo repo;
  MyBloc(this.repo) : super(MyState.initial()) {
    on<_Read>((event, emit) async {
      final result =await  repo.read();
    await  emit.forEach(result, onData:((Either<Failure,List<Models>>data) => data.fold(
          (l) => state.copyWith(optionSuccessFailure: Some(Left(l))),
          (List<Models> lModels) => state.copyWith(lModels: lModels))
      ) );
    });

   on<_Create>((event, emit) async {
      final result = await repo.create(event.model);
      final out = result.fold(
          (l) => state.copyWith(optionSuccessFailure: Some(Left(l))),
          (strings) => state.copyWith(optionSuccessFailure: Some(Right(strings))));
      emit(out);
    });
  }
}
