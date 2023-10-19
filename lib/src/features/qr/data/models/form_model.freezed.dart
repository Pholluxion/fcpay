// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Form _$FormFromJson(Map<String, dynamic> json) {
  return _Form.fromJson(json);
}

/// @nodoc
mixin _$Form {
  int get form_id => throw _privateConstructorUsedError;
  int get num_campos => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormCopyWith<Form> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormCopyWith<$Res> {
  factory $FormCopyWith(Form value, $Res Function(Form) then) =
      _$FormCopyWithImpl<$Res, Form>;
  @useResult
  $Res call({int form_id, int num_campos, String nombre});
}

/// @nodoc
class _$FormCopyWithImpl<$Res, $Val extends Form>
    implements $FormCopyWith<$Res> {
  _$FormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form_id = null,
    Object? num_campos = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      form_id: null == form_id
          ? _value.form_id
          : form_id // ignore: cast_nullable_to_non_nullable
              as int,
      num_campos: null == num_campos
          ? _value.num_campos
          : num_campos // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormImplCopyWith<$Res> implements $FormCopyWith<$Res> {
  factory _$$FormImplCopyWith(
          _$FormImpl value, $Res Function(_$FormImpl) then) =
      __$$FormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int form_id, int num_campos, String nombre});
}

/// @nodoc
class __$$FormImplCopyWithImpl<$Res>
    extends _$FormCopyWithImpl<$Res, _$FormImpl>
    implements _$$FormImplCopyWith<$Res> {
  __$$FormImplCopyWithImpl(_$FormImpl _value, $Res Function(_$FormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form_id = null,
    Object? num_campos = null,
    Object? nombre = null,
  }) {
    return _then(_$FormImpl(
      form_id: null == form_id
          ? _value.form_id
          : form_id // ignore: cast_nullable_to_non_nullable
              as int,
      num_campos: null == num_campos
          ? _value.num_campos
          : num_campos // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormImpl implements _Form {
  const _$FormImpl(
      {required this.form_id, required this.num_campos, required this.nombre});

  factory _$FormImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormImplFromJson(json);

  @override
  final int form_id;
  @override
  final int num_campos;
  @override
  final String nombre;

  @override
  String toString() {
    return 'Form(form_id: $form_id, num_campos: $num_campos, nombre: $nombre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormImpl &&
            (identical(other.form_id, form_id) || other.form_id == form_id) &&
            (identical(other.num_campos, num_campos) ||
                other.num_campos == num_campos) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, form_id, num_campos, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormImplCopyWith<_$FormImpl> get copyWith =>
      __$$FormImplCopyWithImpl<_$FormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormImplToJson(
      this,
    );
  }
}

abstract class _Form implements Form {
  const factory _Form(
      {required final int form_id,
      required final int num_campos,
      required final String nombre}) = _$FormImpl;

  factory _Form.fromJson(Map<String, dynamic> json) = _$FormImpl.fromJson;

  @override
  int get form_id;
  @override
  int get num_campos;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$FormImplCopyWith<_$FormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
