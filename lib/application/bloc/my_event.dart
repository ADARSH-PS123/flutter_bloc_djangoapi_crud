part of 'my_bloc.dart';

@freezed
class MyEvent with _$MyEvent {
  const factory MyEvent.create({required Models model}) = _Create;
    const factory MyEvent.read() = _Read;
      const factory MyEvent.update({required Models model}) = _Update;
        const factory MyEvent.delete({required int id}) = _Delete;
}