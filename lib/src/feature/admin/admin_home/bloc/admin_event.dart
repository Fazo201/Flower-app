part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.pickFile() = _PickFile;
  const factory AdminEvent.deletePickFile() = _DeletePickFile;
  const factory AdminEvent.addNewProduct(FlowerModel product) = _AddNewProduct;
  const factory AdminEvent.updateProduct({required FlowerModel product,File? file}) = _UpdateProduct;
  const factory AdminEvent.deleteProduct(FlowerModel product) = _DeleteProduct;
}