part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getAllOrders() = _GetAllOrders;
  const factory OrderEvent.addNewOrder(OrderModel order) = _AddNewOrder;
  const factory OrderEvent.updateOrder(OrderModel order) = _UpdateOrder;
  const factory OrderEvent.deleteOrder(OrderModel order) = _DeleteOrder;
}