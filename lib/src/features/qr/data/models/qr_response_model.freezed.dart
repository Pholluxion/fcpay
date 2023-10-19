// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QRResponse _$QRResponseFromJson(Map<String, dynamic> json) {
  return _QRResponse.fromJson(json);
}

/// @nodoc
mixin _$QRResponse {
  String get message => throw _privateConstructorUsedError;
  String get codigo_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QRResponseCopyWith<QRResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRResponseCopyWith<$Res> {
  factory $QRResponseCopyWith(
          QRResponse value, $Res Function(QRResponse) then) =
      _$QRResponseCopyWithImpl<$Res, QRResponse>;
  @useResult
  $Res call({String message, String codigo_id});
}

/// @nodoc
class _$QRResponseCopyWithImpl<$Res, $Val extends QRResponse>
    implements $QRResponseCopyWith<$Res> {
  _$QRResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? codigo_id = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      codigo_id: null == codigo_id
          ? _value.codigo_id
          : codigo_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRResponseImplCopyWith<$Res>
    implements $QRResponseCopyWith<$Res> {
  factory _$$QRResponseImplCopyWith(
          _$QRResponseImpl value, $Res Function(_$QRResponseImpl) then) =
      __$$QRResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String codigo_id});
}

/// @nodoc
class __$$QRResponseImplCopyWithImpl<$Res>
    extends _$QRResponseCopyWithImpl<$Res, _$QRResponseImpl>
    implements _$$QRResponseImplCopyWith<$Res> {
  __$$QRResponseImplCopyWithImpl(
      _$QRResponseImpl _value, $Res Function(_$QRResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? codigo_id = null,
  }) {
    return _then(_$QRResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      codigo_id: null == codigo_id
          ? _value.codigo_id
          : codigo_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRResponseImpl implements _QRResponse {
  const _$QRResponseImpl({required this.message, required this.codigo_id});

  factory _$QRResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRResponseImplFromJson(json);

  @override
  final String message;
  @override
  final String codigo_id;

  @override
  String toString() {
    return 'QRResponse(message: $message, codigo_id: $codigo_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.codigo_id, codigo_id) ||
                other.codigo_id == codigo_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, codigo_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRResponseImplCopyWith<_$QRResponseImpl> get copyWith =>
      __$$QRResponseImplCopyWithImpl<_$QRResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRResponseImplToJson(
      this,
    );
  }
}

abstract class _QRResponse implements QRResponse {
  const factory _QRResponse(
      {required final String message,
      required final String codigo_id}) = _$QRResponseImpl;

  factory _QRResponse.fromJson(Map<String, dynamic> json) =
      _$QRResponseImpl.fromJson;

  @override
  String get message;
  @override
  String get codigo_id;
  @override
  @JsonKey(ignore: true)
  _$$QRResponseImplCopyWith<_$QRResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
