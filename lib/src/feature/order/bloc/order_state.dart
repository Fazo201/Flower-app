part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default([]) List<OrderModel> orderList,
    @Default(false) bool isAddedNewOrder,
    String? msg,
  }) = _Initial;
}
