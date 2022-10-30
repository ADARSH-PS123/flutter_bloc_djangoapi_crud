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
      final result = await repo.read();
      final out = result.fold(
          (l) => state.copyWith(optionSuccessFailure: Some(Left(l))),
          (lModels) => state.copyWith(lModels: lModels));
      emit(out);
    });
  }
}
