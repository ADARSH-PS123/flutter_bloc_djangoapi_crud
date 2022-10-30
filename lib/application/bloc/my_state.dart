part of 'my_bloc.dart';

@freezed
class MyState with _$MyState {
  const factory MyState({
required List<Models>lModels,required Option<Either<Failure,String>>optionSuccessFailure,
  }) = _myState;
   factory MyState.initial(){
    return MyState(lModels: [], optionSuccessFailure: None());
  } 
}
