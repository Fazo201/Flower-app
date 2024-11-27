part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial({
    @Default(BlocStatus.initial) BlocStatus status,
    File? file,
    @Default(false) bool isOnSale,
    @Default(false) bool isAddedNewProduct,
    @Default(false) bool isUpdatedProduct,
    @Default(false) bool isDeletedProduct,
    String? msg,
  }) = _Initial;
}
