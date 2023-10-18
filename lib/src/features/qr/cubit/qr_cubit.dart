import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'qr_state.dart';

class QrCubit extends Cubit<QrState> {
  QrCubit() : super(const QrInitial());

  FutureOr<void> yourCustomFunction() {}
}
