import 'dart:developer';

import 'package:flower_app/src/core/enums/bloc_status.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/data/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  AppRepo appRepo;
  HomeBloc(this.appRepo) : super(const HomeState.initial()) {
    on<_GetAllProducts>(_onGetAllProducts);
  }

  Future<void> _onGetAllProducts(_GetAllProducts event, Emitter<HomeState> emit) async {
    log("_onGetAllProducts");
    try {
      emit(state.copyWith(status: BlocStatus.loading, isRefreshCompleted: false));
      final List<FlowerModel> flowerList = await appRepo.getAllData();
      emit(state.copyWith(productList: flowerList,status: BlocStatus.success));
    } catch (e) {
      emit(state.copyWith(msg: e.toString(),status: BlocStatus.error));
    } finally {
      emit(state.copyWith(isRefreshCompleted: event.isRefresh));
    }
  }
}
