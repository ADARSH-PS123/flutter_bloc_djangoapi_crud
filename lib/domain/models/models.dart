import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class Models {
  int? id;
  String? name;
  double? price;
  int? stocks;
  String? photo;

  Models({this.id, this.name, this.price, this.stocks, this.photo});

  factory Models.fromJson(Map<String, dynamic> json) {
    return _$ModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ModelsToJson(this);
}
