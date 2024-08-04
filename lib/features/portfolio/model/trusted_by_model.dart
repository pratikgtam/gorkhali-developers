import 'package:freezed_annotation/freezed_annotation.dart';

part 'trusted_by_model.freezed.dart';
part 'trusted_by_model.g.dart';

@freezed
class TrustedByModel with _$TrustedByModel {
  factory TrustedByModel({
    required String websiteUrl,
    required String logo,
  }) = _TrustedByModel;

  factory TrustedByModel.fromJson(Map<String, dynamic> json) =>
      _$TrustedByModelFromJson(json);
}
