part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart(FlowerModel product) = _AddToCart;
  const factory CartEvent.removeCard(int index) = _RemoveCard;
  const factory CartEvent.clearAllCards() = _ClearAllCards;
  const factory CartEvent.increment(int index) = _Increment;
  const factory CartEvent.decrement(int index) = _Decrement;
}