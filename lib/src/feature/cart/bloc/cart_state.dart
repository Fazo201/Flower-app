part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default([]) List<FlowerModel> productList,
    @Default(0) int totalCount,
    @Default(0) double totalCost,
    String? msg,
  }) = _Initial;
}
