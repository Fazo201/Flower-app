part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default([]) List<FlowerModel> productList,
    String? msg,
    bool? isRefreshCompleted,
  }) = _Initial;
}
