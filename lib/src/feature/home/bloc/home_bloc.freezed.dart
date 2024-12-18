// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  bool? get isRefresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isRefresh) getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isRefresh)? getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isRefresh)? getAllProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllProducts value)? getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({bool? isRefresh});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      isRefresh: freezed == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllProductsImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetAllProductsImplCopyWith(_$GetAllProductsImpl value,
          $Res Function(_$GetAllProductsImpl) then) =
      __$$GetAllProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isRefresh});
}

/// @nodoc
class __$$GetAllProductsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllProductsImpl>
    implements _$$GetAllProductsImplCopyWith<$Res> {
  __$$GetAllProductsImplCopyWithImpl(
      _$GetAllProductsImpl _value, $Res Function(_$GetAllProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_$GetAllProductsImpl(
      isRefresh: freezed == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetAllProductsImpl implements _GetAllProducts {
  const _$GetAllProductsImpl({this.isRefresh});

  @override
  final bool? isRefresh;

  @override
  String toString() {
    return 'HomeEvent.getAllProducts(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductsImplCopyWith<_$GetAllProductsImpl> get copyWith =>
      __$$GetAllProductsImplCopyWithImpl<_$GetAllProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isRefresh) getAllProducts,
  }) {
    return getAllProducts(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isRefresh)? getAllProducts,
  }) {
    return getAllProducts?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isRefresh)? getAllProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllProducts value)? getAllProducts,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements HomeEvent {
  const factory _GetAllProducts({final bool? isRefresh}) = _$GetAllProductsImpl;

  @override
  bool? get isRefresh;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllProductsImplCopyWith<_$GetAllProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<FlowerModel> get productList => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  bool? get isRefreshCompleted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BlocStatus status, List<FlowerModel> productList,
            String? msg, bool? isRefreshCompleted)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BlocStatus status, List<FlowerModel> productList,
            String? msg, bool? isRefreshCompleted)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BlocStatus status, List<FlowerModel> productList,
            String? msg, bool? isRefreshCompleted)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<FlowerModel> productList,
      String? msg,
      bool? isRefreshCompleted});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productList = null,
    Object? msg = freezed,
    Object? isRefreshCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<FlowerModel>,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      isRefreshCompleted: freezed == isRefreshCompleted
          ? _value.isRefreshCompleted
          : isRefreshCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<FlowerModel> productList,
      String? msg,
      bool? isRefreshCompleted});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productList = null,
    Object? msg = freezed,
    Object? isRefreshCompleted = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<FlowerModel>,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      isRefreshCompleted: freezed == isRefreshCompleted
          ? _value.isRefreshCompleted
          : isRefreshCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = BlocStatus.initial,
      final List<FlowerModel> productList = const [],
      this.msg,
      this.isRefreshCompleted})
      : _productList = productList;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<FlowerModel> _productList;
  @override
  @JsonKey()
  List<FlowerModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  final String? msg;
  @override
  final bool? isRefreshCompleted;

  @override
  String toString() {
    return 'HomeState.initial(status: $status, productList: $productList, msg: $msg, isRefreshCompleted: $isRefreshCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.isRefreshCompleted, isRefreshCompleted) ||
                other.isRefreshCompleted == isRefreshCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_productList),
      msg,
      isRefreshCompleted);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BlocStatus status, List<FlowerModel> productList,
            String? msg, bool? isRefreshCompleted)
        initial,
  }) {
    return initial(status, productList, msg, isRefreshCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BlocStatus status, List<FlowerModel> productList,
            String? msg, bool? isRefreshCompleted)?
        initial,
  }) {
    return initial?.call(status, productList, msg, isRefreshCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BlocStatus status, List<FlowerModel> productList,
            String? msg, bool? isRefreshCompleted)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, productList, msg, isRefreshCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final BlocStatus status,
      final List<FlowerModel> productList,
      final String? msg,
      final bool? isRefreshCompleted}) = _$InitialImpl;

  @override
  BlocStatus get status;
  @override
  List<FlowerModel> get productList;
  @override
  String? get msg;
  @override
  bool? get isRefreshCompleted;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
