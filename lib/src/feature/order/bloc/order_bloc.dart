import 'dart:developer';

import 'package:flower_app/src/core/enums/bloc_status.dart';
import 'package:flower_app/src/data/entity/order_model.dart';
import 'package:flower_app/src/data/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  AppRepo appRepo;
  OrderBloc(this.appRepo) : super(const _Initial()) {
    on<_GetAllOrders>(_onGetAllOrders);
    on<_AddNewOrder>(_onAddNewOrder);
    on<_UpdateOrder>(_onUpdeteOrder);
    on<_DeleteOrder>(_onDeleteOrder);
  }

  Future<void> _onGetAllOrders(_GetAllOrders event, Emitter<OrderState> emit) async {
    log("_onGetAllOrders");
    try {
      emit(state.copyWith(status: BlocStatus.loading));
      final orderList = await appRepo.getAllOrders();
      emit(state.copyWith(orderList: orderList));
    } catch (e) {
      emit(state.copyWith(msg: e.toString(),status: BlocStatus.error));
    } finally {
      emit(state.copyWith(status: BlocStatus.success));
    }
  }

  Future<void> _onAddNewOrder(_AddNewOrder event, Emitter<OrderState> emit) async {
    log("_onAddToOrder");
    try {
      emit(state.copyWith(status: BlocStatus.loading));
      await appRepo.addOrder(event.order);
      add(const _GetAllOrders());
      emit(state.copyWith(isAddedNewOrder: true));
    } catch (e) {
      emit(state.copyWith(msg: e.toString(),status: BlocStatus.error));
    }finally{
      emit(state.copyWith(status: BlocStatus.success,isAddedNewOrder: false));
    }
  }

  Future<void> _onUpdeteOrder(_UpdateOrder event, Emitter<OrderState> emit) async {
    log("_onDeleteOrder");
    try {
      emit(state.copyWith(status: BlocStatus.loading));
      await appRepo.updateOrder(event.order);
      add(const _GetAllOrders());
    } catch (e) {
      emit(state.copyWith(msg: e.toString(),status: BlocStatus.error));
    }finally{
      emit(state.copyWith(status: BlocStatus.success));
    }
  }

  Future<void> _onDeleteOrder(_DeleteOrder event, Emitter<OrderState> emit) async {
    log("_onDeleteOrder");
    try {
      emit(state.copyWith(status: BlocStatus.loading));
      await appRepo.deleteOrder(event.order);
      add(const _GetAllOrders());
    } catch (e) {
      emit(state.copyWith(msg: e.toString(),status: BlocStatus.error));
    }finally{
      emit(state.copyWith(status: BlocStatus.success));
    }
  }
}
