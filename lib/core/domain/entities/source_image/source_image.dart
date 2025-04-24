import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'source_image.freezed.dart';
part 'source_image.g.dart';

@freezed
class SourceImage with _$SourceImage {
  const factory SourceImage({
    required String url,
    required int height,
    required int width,
  }) = _SourceImage;

  factory SourceImage.fromJson(Map<String, dynamic> json) =>
      _$SourceImageFromJson(json);
}
