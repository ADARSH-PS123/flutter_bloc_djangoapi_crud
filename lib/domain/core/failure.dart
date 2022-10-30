
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';


@freezed
class Failure with _$Failure {
  factory Failure.ServerFailure() = _ServerFailure;
  factory Failure.ClientFailure() = _ClientFailure;
	
}
