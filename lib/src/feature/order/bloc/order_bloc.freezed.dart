// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(OrderModel order) addNewOrder,
    required TResult Function(OrderModel order) updateOrder,
    required TResult Function(OrderModel order) deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(OrderModel order)? addNewOrder,
    TResult? Function(OrderModel order)? updateOrder,
    TResult? Function(OrderModel order)? deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(OrderModel order)? addNewOrder,
    TResult Function(OrderModel order)? updateOrder,
    TResult Function(OrderModel order)? deleteOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_AddNewOrder value) addNewOrder,
    required TResult Function(_UpdateOrder value) updateOrder,
    required TResult Function(_DeleteOrder value) deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_AddNewOrder value)? addNewOrder,
    TResult? Function(_UpdateOrder value)? updateOrder,
    TResult? Function(_DeleteOrder value)? deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_AddNewOrder value)? addNewOrder,
    TResult Function(_UpdateOrder value)? updateOrder,
    TResult Function(_DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllOrdersImplCopyWith<$Res> {
  factory _$$GetAllOrdersImplCopyWith(
          _$GetAllOrdersImpl value, $Res Function(_$GetAllOrdersImpl) then) =
      __$$GetAllOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllOrdersImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetAllOrdersImpl>
    implements _$$GetAllOrdersImplCopyWith<$Res> {
  __$$GetAllOrdersImplCopyWithImpl(
      _$GetAllOrdersImpl _value, $Res Function(_$GetAllOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllOrdersImpl implements _GetAllOrders {
  const _$GetAllOrdersImpl();

  @override
  String toString() {
    return 'OrderEvent.getAllOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(OrderModel order) addNewOrder,
    required TResult Function(OrderModel order) updateOrder,
    required TResult Function(OrderModel order) deleteOrder,
  }) {
    return getAllOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(OrderModel order)? addNewOrder,
    TResult? Function(OrderModel order)? updateOrder,
    TResult? Function(OrderModel order)? deleteOrder,
  }) {
    return getAllOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(OrderModel order)? addNewOrder,
    TResult Function(OrderModel order)? updateOrder,
    TResult Function(OrderModel order)? deleteOrder,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_AddNewOrder value) addNewOrder,
    required TResult Function(_UpdateOrder value) updateOrder,
    required TResult Function(_DeleteOrder value) deleteOrder,
  }) {
    return getAllOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_AddNewOrder value)? addNewOrder,
    TResult? Function(_UpdateOrder value)? updateOrder,
    TResult? Function(_DeleteOrder value)? deleteOrder,
  }) {
    return getAllOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_AddNewOrder value)? addNewOrder,
    TResult Function(_UpdateOrder value)? updateOrder,
    TResult Function(_DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders(this);
    }
    return orElse();
  }
}

abstract class _GetAllOrders implements OrderEvent {
  const factory _GetAllOrders() = _$GetAllOrdersImpl;
}

/// @nodoc
abstract class _$$AddNewOrderImplCopyWith<$Res> {
  factory _$$AddNewOrderImplCopyWith(
          _$AddNewOrderImpl value, $Res Function(_$AddNewOrderImpl) then) =
      __$$AddNewOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel order});
}

/// @nodoc
class __$$AddNewOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AddNewOrderImpl>
    implements _$$AddNewOrderImplCopyWith<$Res> {
  __$$AddNewOrderImplCopyWithImpl(
      _$AddNewOrderImpl _value, $Res Function(_$AddNewOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$AddNewOrderImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$AddNewOrderImpl implements _AddNewOrder {
  const _$AddNewOrderImpl(this.order);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderEvent.addNewOrder(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewOrderImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewOrderImplCopyWith<_$AddNewOrderImpl> get copyWith =>
      __$$AddNewOrderImplCopyWithImpl<_$AddNewOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(OrderModel order) addNewOrder,
    required TResult Function(OrderModel order) updateOrder,
    required TResult Function(OrderModel order) deleteOrder,
  }) {
    return addNewOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(OrderModel order)? addNewOrder,
    TResult? Function(OrderModel order)? updateOrder,
    TResult? Function(OrderModel order)? deleteOrder,
  }) {
    return addNewOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(OrderModel order)? addNewOrder,
    TResult Function(OrderModel order)? updateOrder,
    TResult Function(OrderModel order)? deleteOrder,
    required TResult orElse(),
  }) {
    if (addNewOrder != null) {
      return addNewOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_AddNewOrder value) addNewOrder,
    required TResult Function(_UpdateOrder value) updateOrder,
    required TResult Function(_DeleteOrder value) deleteOrder,
  }) {
    return addNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_AddNewOrder value)? addNewOrder,
    TResult? Function(_UpdateOrder value)? updateOrder,
    TResult? Function(_DeleteOrder value)? deleteOrder,
  }) {
    return addNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_AddNewOrder value)? addNewOrder,
    TResult Function(_UpdateOrder value)? updateOrder,
    TResult Function(_DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (addNewOrder != null) {
      return addNewOrder(this);
    }
    return orElse();
  }
}

abstract class _AddNewOrder implements OrderEvent {
  const factory _AddNewOrder(final OrderModel order) = _$AddNewOrderImpl;

  OrderModel get order;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewOrderImplCopyWith<_$AddNewOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderImplCopyWith<$Res> {
  factory _$$UpdateOrderImplCopyWith(
          _$UpdateOrderImpl value, $Res Function(_$UpdateOrderImpl) then) =
      __$$UpdateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel order});
}

/// @nodoc
class __$$UpdateOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$UpdateOrderImpl>
    implements _$$UpdateOrderImplCopyWith<$Res> {
  __$$UpdateOrderImplCopyWithImpl(
      _$UpdateOrderImpl _value, $Res Function(_$UpdateOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$UpdateOrderImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$UpdateOrderImpl implements _UpdateOrder {
  const _$UpdateOrderImpl(this.order);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderEvent.updateOrder(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderImplCopyWith<_$UpdateOrderImpl> get copyWith =>
      __$$UpdateOrderImplCopyWithImpl<_$UpdateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(OrderModel order) addNewOrder,
    required TResult Function(OrderModel order) updateOrder,
    required TResult Function(OrderModel order) deleteOrder,
  }) {
    return updateOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(OrderModel order)? addNewOrder,
    TResult? Function(OrderModel order)? updateOrder,
    TResult? Function(OrderModel order)? deleteOrder,
  }) {
    return updateOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(OrderModel order)? addNewOrder,
    TResult Function(OrderModel order)? updateOrder,
    TResult Function(OrderModel order)? deleteOrder,
    required TResult orElse(),
  }) {
    if (updateOrder != null) {
      return updateOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_AddNewOrder value) addNewOrder,
    required TResult Function(_UpdateOrder value) updateOrder,
    required TResult Function(_DeleteOrder value) deleteOrder,
  }) {
    return updateOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_AddNewOrder value)? addNewOrder,
    TResult? Function(_UpdateOrder value)? updateOrder,
    TResult? Function(_DeleteOrder value)? deleteOrder,
  }) {
    return updateOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_AddNewOrder value)? addNewOrder,
    TResult Function(_UpdateOrder value)? updateOrder,
    TResult Function(_DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (updateOrder != null) {
      return updateOrder(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrder implements OrderEvent {
  const factory _UpdateOrder(final OrderModel order) = _$UpdateOrderImpl;

  OrderModel get order;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrderImplCopyWith<_$UpdateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteOrderImplCopyWith<$Res> {
  factory _$$DeleteOrderImplCopyWith(
          _$DeleteOrderImpl value, $Res Function(_$DeleteOrderImpl) then) =
      __$$DeleteOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel order});
}

/// @nodoc
class __$$DeleteOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$DeleteOrderImpl>
    implements _$$DeleteOrderImplCopyWith<$Res> {
  __$$DeleteOrderImplCopyWithImpl(
      _$DeleteOrderImpl _value, $Res Function(_$DeleteOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$DeleteOrderImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$DeleteOrderImpl implements _DeleteOrder {
  const _$DeleteOrderImpl(this.order);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderEvent.deleteOrder(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOrderImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOrderImplCopyWith<_$DeleteOrderImpl> get copyWith =>
      __$$DeleteOrderImplCopyWithImpl<_$DeleteOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(OrderModel order) addNewOrder,
    required TResult Function(OrderModel order) updateOrder,
    required TResult Function(OrderModel order) deleteOrder,
  }) {
    return deleteOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(OrderModel order)? addNewOrder,
    TResult? Function(OrderModel order)? updateOrder,
    TResult? Function(OrderModel order)? deleteOrder,
  }) {
    return deleteOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(OrderModel order)? addNewOrder,
    TResult Function(OrderModel order)? updateOrder,
    TResult Function(OrderModel order)? deleteOrder,
    required TResult orElse(),
  }) {
    if (deleteOrder != null) {
      return deleteOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_AddNewOrder value) addNewOrder,
    required TResult Function(_UpdateOrder value) updateOrder,
    required TResult Function(_DeleteOrder value) deleteOrder,
  }) {
    return deleteOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_AddNewOrder value)? addNewOrder,
    TResult? Function(_UpdateOrder value)? updateOrder,
    TResult? Function(_DeleteOrder value)? deleteOrder,
  }) {
    return deleteOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_AddNewOrder value)? addNewOrder,
    TResult Function(_UpdateOrder value)? updateOrder,
    TResult Function(_DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (deleteOrder != null) {
      return deleteOrder(this);
    }
    return orElse();
  }
}

abstract class _DeleteOrder implements OrderEvent {
  const factory _DeleteOrder(final OrderModel order) = _$DeleteOrderImpl;

  OrderModel get order;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteOrderImplCopyWith<_$DeleteOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  List<OrderModel> get orderList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddedNewOrder => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OrderModel> orderList, bool isLoading,
            bool isAddedNewOrder, String? error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OrderModel> orderList, bool isLoading,
            bool isAddedNewOrder, String? error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OrderModel> orderList, bool isLoading,
            bool isAddedNewOrder, String? error)?
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

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {List<OrderModel> orderList,
      bool isLoading,
      bool isAddedNewOrder,
      String? error});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? isLoading = null,
    Object? isAddedNewOrder = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddedNewOrder: null == isAddedNewOrder
          ? _value.isAddedNewOrder
          : isAddedNewOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OrderModel> orderList,
      bool isLoading,
      bool isAddedNewOrder,
      String? error});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? isLoading = null,
    Object? isAddedNewOrder = null,
    Object? error = freezed,
  }) {
    return _then(_$InitialImpl(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddedNewOrder: null == isAddedNewOrder
          ? _value.isAddedNewOrder
          : isAddedNewOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<OrderModel> orderList = const [],
      this.isLoading = false,
      this.isAddedNewOrder = false,
      this.error})
      : _orderList = orderList;

  final List<OrderModel> _orderList;
  @override
  @JsonKey()
  List<OrderModel> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isAddedNewOrder;
  @override
  final String? error;

  @override
  String toString() {
    return 'OrderState.initial(orderList: $orderList, isLoading: $isLoading, isAddedNewOrder: $isAddedNewOrder, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAddedNewOrder, isAddedNewOrder) ||
                other.isAddedNewOrder == isAddedNewOrder) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orderList),
      isLoading,
      isAddedNewOrder,
      error);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OrderModel> orderList, bool isLoading,
            bool isAddedNewOrder, String? error)
        initial,
  }) {
    return initial(orderList, isLoading, isAddedNewOrder, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OrderModel> orderList, bool isLoading,
            bool isAddedNewOrder, String? error)?
        initial,
  }) {
    return initial?.call(orderList, isLoading, isAddedNewOrder, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OrderModel> orderList, bool isLoading,
            bool isAddedNewOrder, String? error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(orderList, isLoading, isAddedNewOrder, error);
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

abstract class _Initial implements OrderState {
  const factory _Initial(
      {final List<OrderModel> orderList,
      final bool isLoading,
      final bool isAddedNewOrder,
      final String? error}) = _$InitialImpl;

  @override
  List<OrderModel> get orderList;
  @override
  bool get isLoading;
  @override
  bool get isAddedNewOrder;
  @override
  String? get error;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
