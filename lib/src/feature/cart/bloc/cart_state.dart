part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    @Default([]) List<FlowerModel> productList,
    @Default(0) int totalCount,
    @Default(0) double totalCost,
    @Default(false) bool isLoading,
  }) = _Initial;
}
