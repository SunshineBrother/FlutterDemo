import 'package:json_annotation/json_annotation.dart';
part 'my_base_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class MyBaseModel<T> {
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'message')
  String? message;

  T? data;

  MyBaseModel({
    this.code,
    this.message,
    this.data,
  });

  factory MyBaseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$MyBaseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$MyBaseModelToJson(this, toJsonT);

  /// 是否成功
  bool isSucess() {
    bool result = this.code == 0;
    return result;
  }
}
