import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flower_app/src/data/entity/flower_model.dart';
import 'package:flower_app/src/data/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AppRepo appRepo;
  AdminBloc(this.appRepo) : super(const _Initial()) {
    on<_PickFile>(_onPickFile);
    on<_RemoveFile>(_onRemoveFile);
    on<_ToggleSale>(_onToggleSale);
    on<_AddNewProduct>(_onAddNewProduct);
    on<_UpdateProduct>(_onUpdateProduct);
    on<_DeleteProduct>(_onDeleteProduct);
  }

  Future<void> _onPickFile(_PickFile event, Emitter<AdminState> emit) async {
    log("_onPickFile");
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        File isImage = File(result.files.single.path!);
        String selectedFile = isImage.path.substring(isImage.path.lastIndexOf('.'));
        if (selectedFile == '.png' || selectedFile == ".jpg") {
          emit(state.copyWith(file: isImage, error: null));
        } else {
          emit(state.copyWith(error: "Это не изображение"));
        }
      }
    } catch (e) {
      emit(state.copyWith(error: "Произошла ошибка при выборе файла: $e"));
    }finally{
      emit(state.copyWith(error: null));
    }
  }

  Future<void> _onRemoveFile(_RemoveFile event, Emitter<AdminState> emit) async {
    log("_onDeletePickFile");
    emit(state.copyWith(file: null));
  }

  Future<void> _onToggleSale(_ToggleSale event, Emitter<AdminState> emit) async {
    log("_onToggleSale");
    emit(state.copyWith(isOnSale: event.value??false));
  }

  Future<void> _onAddNewProduct(_AddNewProduct event, Emitter<AdminState> emit) async {
    log("_onAddNewProduct");
    try {
      if (state.file != null) {
        emit(state.copyWith(isLoading: true));
        await appRepo.addData(event.product, state.file!);
        add(const _RemoveFile());
        emit(state.copyWith(isAddedNewProduct: true));
      }else{
        emit(state.copyWith(error: "Пожалуйста, сначала выберите изображение"));
      }
    } catch (e) {
      emit(state.copyWith(error: "Этот продукт не добавлен $e"));
    }finally{
      emit(state.copyWith(isLoading: false, error: null,isAddedNewProduct: false));
    }
  }

  Future<void> _onUpdateProduct(_UpdateProduct event, Emitter<AdminState> emit) async {
    log("_onUpdateProduct");
    try {
      emit(state.copyWith(isLoading: true));
      await appRepo.updateData(event.product,state.file);
      add(const _RemoveFile());
      emit(state.copyWith(isUpdatedProduct: true));
    } catch (e) {
      emit(state.copyWith(error: "Этот продукт не обновлен $e"));
    }finally{
      emit(state.copyWith(isLoading: false, error: null,isUpdatedProduct: false));
    }
  }

  Future<void> _onDeleteProduct(_DeleteProduct event, Emitter<AdminState> emit) async {
    log("_onDeleteProduct");
    try {
      emit(state.copyWith(isLoading: true));
      await appRepo.deleteData(event.product);
      add(const _RemoveFile());
      emit(state.copyWith(isDeletedProduct: true));
    } catch (e) {
      emit(state.copyWith(error: "Этот продукт не удален $e"));
    }finally{
      emit(state.copyWith(isLoading: false, error: null,isDeletedProduct: false));
    }
  }
}
