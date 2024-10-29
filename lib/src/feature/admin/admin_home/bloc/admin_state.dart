part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial({
    File? file,
    @Default(false) bool isLoading,
    String? error,
  }) = _Initial;
}
