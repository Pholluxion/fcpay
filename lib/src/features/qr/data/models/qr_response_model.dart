// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_response_model.freezed.dart';
part 'qr_response_model.g.dart';

@freezed
class QRResponse with _$QRResponse {
  const factory QRResponse({
    required String? message,
    required String? error,
    required String? codigo_id,
  }) = _QRResponse;

  factory QRResponse.fromJson(Map<String, dynamic> json) =>
      _$QRResponseFromJson(json);
}
