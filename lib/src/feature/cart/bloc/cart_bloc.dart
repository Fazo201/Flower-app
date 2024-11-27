import 'dart:developer';

import 'package:flower_app/src/core/enums/bloc_status.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/data/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  AppRepo appRepo;
  CartBloc(this.appRepo) : super(const _Initial()) {
    on<_AddToCart>(_onAddToCart);
    on<_RemoveCard>(_onRemoveCard);
    on<_ClearAllCards>(_onClearAllCards);
    on<_Increment>(_onIncrement);
    on<_Decrement>(_onDecrement);
  }

  Future<void> _onAddToCart(_AddToCart event, Emitter<CartState> emit) async {
    log("_onAddToCart");
    try {
      final newProductList = List<FlowerModel>.from(state.productList);
      final existingProductIndex = newProductList.indexWhere((item) => item.id == event.product.id);

      if (existingProductIndex != -1) {
        final existingProduct = newProductList[existingProductIndex];
        newProductList[existingProductIndex] = existingProduct.copyWith(
          count: (existingProduct.count ?? 0) + 1,
          totalPrice: existingProduct.discountedPrice! * ((existingProduct.count ?? 0) + 1),
        );
      } else {
        newProductList.add(event.product.copyWith(count: 1, totalPrice: event.product.discountedPrice));
      }

      final totalCount = newProductList.fold(0, (sum, item) => sum + (item.count ?? 0));
      final totalCost = newProductList.fold(0.0, (sum, item) => sum + (item.totalPrice ?? 0));
      emit(state.copyWith(
        productList: newProductList,
        totalCount: totalCount,
        totalCost: totalCost,
      ));
    } catch (e) {
      log("Error fetching products: $e");
    }
  }

  Future<void> _onRemoveCard(_RemoveCard event, Emitter<CartState> emit) async {
    log("_onDecrement");
    final newProductList = List<FlowerModel>.from(state.productList);

    newProductList.removeAt(event.index);

    final totalCount = newProductList.fold(0, (sum, item) => sum + (item.count ?? 0));
    final totalCost = newProductList.fold(0.0, (sum, item) => sum + (item.totalPrice ?? 0.0));
    emit(state.copyWith(productList: newProductList, totalCount: totalCount, totalCost: totalCost));
  }

  Future<void> _onClearAllCards(_ClearAllCards event, Emitter<CartState> emit) async {
    log("_onClearAllCards");
    emit(state.copyWith(productList: [], totalCount: 0, totalCost: 0));
  }

  Future<void> _onIncrement(_Increment event, Emitter<CartState> emit) async {
    log("_onIncrement");
    final newProductList = List<FlowerModel>.from(state.productList);
    final product = newProductList[event.index];

    newProductList[event.index] = product.copyWith(
      count: product.count! + 1,
      totalPrice: product.discountedPrice! * (product.count! + 1),
    );

    final totalCount = newProductList.fold(0, (sum, item) => sum + (item.count ?? 0));
    final totalCost = newProductList.fold(0.0, (sum, item) => sum + (item.totalPrice ?? 0.0));

    emit(state.copyWith(productList: newProductList, totalCount: totalCount, totalCost: totalCost));
  }

  Future<void> _onDecrement(_Decrement event, Emitter<CartState> emit) async {
    log("_onDecrement");
    final newProductList = List<FlowerModel>.from(state.productList);
    final product = newProductList[event.index];

    if (product.count != null && product.count! > 1) {
      newProductList[event.index] = product.copyWith(
        count: product.count! - 1,
        totalPrice: product.discountedPrice! * (product.count! - 1),
      );
    } else {
      newProductList.removeAt(event.index);
    }

    final totalCount = newProductList.fold(0, (sum, item) => sum + (item.count ?? 0));
    final totalCost = newProductList.fold(0.0, (sum, item) => sum + (item.totalPrice ?? 0.0));
    emit(state.copyWith(productList: newProductList, totalCount: totalCount, totalCost: totalCost));
  }

}
