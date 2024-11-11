part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial({
    File? file,
    @Default(false) bool isOnSale,
    @Default(false) bool isAddedNewProduct,
    @Default(false) bool isUpdatedProduct,
    @Default(false) bool isDeletedProduct,
    @Default(false) bool isLoading,
    String? error,
  }) = _Initial;
}
