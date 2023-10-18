part of 'qr_cubit.dart';

class QrState extends Equatable {
  const QrState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  QrState copyWith({
    String? customProperty,
  }) {
    return QrState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class QrInitial extends QrState {
  const QrInitial() : super();
}
