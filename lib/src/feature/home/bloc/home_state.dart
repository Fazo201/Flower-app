part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default([]) List<FlowerModel> productList,
    // @Default([]) List<FlowerModel> cartList,
    // @Default(0) int cartItemCount,
    @Default(false) bool isLoading,
  }) = _Initial;
}
