// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
// ignore: non_constant_identifier_names
  String get numero_cuenta => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  String get tipo =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get account_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({String numero_cuenta, double saldo, String tipo, int account_id});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numero_cuenta = null,
    Object? saldo = null,
    Object? tipo = null,
    Object? account_id = null,
  }) {
    return _then(_value.copyWith(
      numero_cuenta: null == numero_cuenta
          ? _value.numero_cuenta
          : numero_cuenta // ignore: cast_nullable_to_non_nullable
              as String,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      account_id: null == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String numero_cuenta, double saldo, String tipo, int account_id});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numero_cuenta = null,
    Object? saldo = null,
    Object? tipo = null,
    Object? account_id = null,
  }) {
    return _then(_$AccountImpl(
      numero_cuenta: null == numero_cuenta
          ? _value.numero_cuenta
          : numero_cuenta // ignore: cast_nullable_to_non_nullable
              as String,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      account_id: null == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.numero_cuenta,
      required this.saldo,
      required this.tipo,
      required this.account_id});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String numero_cuenta;
  @override
  final double saldo;
  @override
  final String tipo;
// ignore: non_constant_identifier_names
  @override
  final int account_id;

  @override
  String toString() {
    return 'Account(numero_cuenta: $numero_cuenta, saldo: $saldo, tipo: $tipo, account_id: $account_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.numero_cuenta, numero_cuenta) ||
                other.numero_cuenta == numero_cuenta) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.account_id, account_id) ||
                other.account_id == account_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numero_cuenta, saldo, tipo, account_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String numero_cuenta,
      required final double saldo,
      required final String tipo,
      required final int account_id}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override // ignore: non_constant_identifier_names
  String get numero_cuenta;
  @override
  double get saldo;
  @override
  String get tipo;
  @override // ignore: non_constant_identifier_names
  int get account_id;
  @override
  @JsonKey(ignore: true)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
