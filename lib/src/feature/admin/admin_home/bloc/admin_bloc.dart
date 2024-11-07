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
    on<_PickFile>(_pickFile);
    on<_DeletePickFile>(_deletePickFile);
    on<_AddNewProduct>(_addNewProduct);
    on<_UpdateProduct>(_updateProduct);
    on<_DeleteProduct>(_onDeleteProduct);
  }

  Future<void> _pickFile(_PickFile event, Emitter<AdminState> emit) async {
    log("_pickFile");
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        File isImage = File(result.files.single.path!);
        String fileFormat = isImage.path.substring(isImage.path.lastIndexOf('.'));
        if (fileFormat == '.png' || fileFormat == ".jpg") {
          emit(state.copyWith(file: isImage, error: null));
        } else {
          emit(state.copyWith(error: "Это не изображение"));
        }
      }
    } catch (e) {
      emit(state.copyWith(error: "Произошла ошибка при выборе файла: $e"));
    }
  }

  Future<void> _deletePickFile(_DeletePickFile event, Emitter<AdminState> emit) async {
    log("_deletePickFile");
    emit(state.copyWith(file: null));
  }

  Future<void> _addNewProduct(_AddNewProduct event, Emitter<AdminState> emit) async {
    log("_addNewProduct");
    try {
      if (state.file != null) {
        emit(state.copyWith(isLoading: true));
        await appRepo.addData(event.product, state.file!);
        add(const _DeletePickFile());
      }else{
        emit(state.copyWith(error: "Пожалуйста, сначала выберите изображение"));
      }
    } catch (e) {
      emit(state.copyWith(error: "Этот продукт не добавлен $e"));
    }finally{
      emit(state.copyWith(isLoading: false, error: null));
    }
  }

  Future<void> _updateProduct(_UpdateProduct event, Emitter<AdminState> emit) async {
    log("_updateProduct");
    try {
      emit(state.copyWith(isLoading: true));
      await appRepo.updateData(event.product,state.file);
      add(const _DeletePickFile());
    } catch (e) {
      emit(state.copyWith(error: "Этот продукт не обновлен $e"));
    }finally{
      emit(state.copyWith(isLoading: false, error: null));
    }
  }

  Future<void> _onDeleteProduct(_DeleteProduct event, Emitter<AdminState> emit) async {
    log("_deleteProduct");
    try {
      emit(state.copyWith(isLoading: true));
      await appRepo.deleteData(event.product);
      add(const _DeletePickFile());
    } catch (e) {
      emit(state.copyWith(error: "Этот продукт не удален $e"));
    }finally{
      emit(state.copyWith(isLoading: false, error: null));
    }
  }
}
