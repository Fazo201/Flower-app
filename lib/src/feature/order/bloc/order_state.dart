part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial({
    @Default([]) List<OrderModel> orderList,
    @Default(false) bool isLoading,
    @Default(false) bool isAddedNewOrder,
    String? error,
  }) = _Initial;
}
