// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_model.freezed.dart';
part 'form_model.g.dart';

@freezed
class Form with _$Form {
  const factory Form({
    required int form_id,
    required int num_campos,
    required String nombre,
  }) = _Form;

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);
}
