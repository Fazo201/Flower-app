part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default([]) List<FlowerModel> productList,
    @Default(false) bool isLoading,
    String? error,
    bool? isRefreshCompleted,
  }) = _Initial;
}
