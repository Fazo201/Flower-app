// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlowerModel product) addToCart,
    required TResult Function(int index) removeCard,
    required TResult Function() clearAllCards,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlowerModel product)? addToCart,
    TResult? Function(int index)? removeCard,
    TResult? Function()? clearAllCards,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlowerModel product)? addToCart,
    TResult Function(int index)? removeCard,
    TResult Function()? clearAllCards,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveCard value) removeCard,
    required TResult Function(_ClearAllCards value) clearAllCards,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveCard value)? removeCard,
    TResult? Function(_ClearAllCards value)? clearAllCards,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveCard value)? removeCard,
    TResult Function(_ClearAllCards value)? clearAllCards,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlowerModel product});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddToCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FlowerModel,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.product);

  @override
  final FlowerModel product;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlowerModel product) addToCart,
    required TResult Function(int index) removeCard,
    required TResult Function() clearAllCards,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
  }) {
    return addToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlowerModel product)? addToCart,
    TResult? Function(int index)? removeCard,
    TResult? Function()? clearAllCards,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return addToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlowerModel product)? addToCart,
    TResult Function(int index)? removeCard,
    TResult Function()? clearAllCards,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveCard value) removeCard,
    required TResult Function(_ClearAllCards value) clearAllCards,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveCard value)? removeCard,
    TResult? Function(_ClearAllCards value)? clearAllCards,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveCard value)? removeCard,
    TResult Function(_ClearAllCards value)? clearAllCards,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final FlowerModel product) = _$AddToCartImpl;

  FlowerModel get product;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCardImplCopyWith<$Res> {
  factory _$$RemoveCardImplCopyWith(
          _$RemoveCardImpl value, $Res Function(_$RemoveCardImpl) then) =
      __$$RemoveCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveCardImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveCardImpl>
    implements _$$RemoveCardImplCopyWith<$Res> {
  __$$RemoveCardImplCopyWithImpl(
      _$RemoveCardImpl _value, $Res Function(_$RemoveCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveCardImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveCardImpl implements _RemoveCard {
  const _$RemoveCardImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.removeCard(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCardImplCopyWith<_$RemoveCardImpl> get copyWith =>
      __$$RemoveCardImplCopyWithImpl<_$RemoveCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlowerModel product) addToCart,
    required TResult Function(int index) removeCard,
    required TResult Function() clearAllCards,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
  }) {
    return removeCard(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlowerModel product)? addToCart,
    TResult? Function(int index)? removeCard,
    TResult? Function()? clearAllCards,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return removeCard?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlowerModel product)? addToCart,
    TResult Function(int index)? removeCard,
    TResult Function()? clearAllCards,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) {
    if (removeCard != null) {
      return removeCard(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveCard value) removeCard,
    required TResult Function(_ClearAllCards value) clearAllCards,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return removeCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveCard value)? removeCard,
    TResult? Function(_ClearAllCards value)? clearAllCards,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return removeCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveCard value)? removeCard,
    TResult Function(_ClearAllCards value)? clearAllCards,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (removeCard != null) {
      return removeCard(this);
    }
    return orElse();
  }
}

abstract class _RemoveCard implements CartEvent {
  const factory _RemoveCard(final int index) = _$RemoveCardImpl;

  int get index;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCardImplCopyWith<_$RemoveCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllCardsImplCopyWith<$Res> {
  factory _$$ClearAllCardsImplCopyWith(
          _$ClearAllCardsImpl value, $Res Function(_$ClearAllCardsImpl) then) =
      __$$ClearAllCardsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllCardsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearAllCardsImpl>
    implements _$$ClearAllCardsImplCopyWith<$Res> {
  __$$ClearAllCardsImplCopyWithImpl(
      _$ClearAllCardsImpl _value, $Res Function(_$ClearAllCardsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAllCardsImpl implements _ClearAllCards {
  const _$ClearAllCardsImpl();

  @override
  String toString() {
    return 'CartEvent.clearAllCards()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllCardsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlowerModel product) addToCart,
    required TResult Function(int index) removeCard,
    required TResult Function() clearAllCards,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
  }) {
    return clearAllCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlowerModel product)? addToCart,
    TResult? Function(int index)? removeCard,
    TResult? Function()? clearAllCards,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return clearAllCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlowerModel product)? addToCart,
    TResult Function(int index)? removeCard,
    TResult Function()? clearAllCards,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) {
    if (clearAllCards != null) {
      return clearAllCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveCard value) removeCard,
    required TResult Function(_ClearAllCards value) clearAllCards,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return clearAllCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveCard value)? removeCard,
    TResult? Function(_ClearAllCards value)? clearAllCards,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return clearAllCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveCard value)? removeCard,
    TResult Function(_ClearAllCards value)? clearAllCards,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (clearAllCards != null) {
      return clearAllCards(this);
    }
    return orElse();
  }
}

abstract class _ClearAllCards implements CartEvent {
  const factory _ClearAllCards() = _$ClearAllCardsImpl;
}

/// @nodoc
abstract class _$$IncrementImplCopyWith<$Res> {
  factory _$$IncrementImplCopyWith(
          _$IncrementImpl value, $Res Function(_$IncrementImpl) then) =
      __$$IncrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IncrementImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncrementImpl>
    implements _$$IncrementImplCopyWith<$Res> {
  __$$IncrementImplCopyWithImpl(
      _$IncrementImpl _value, $Res Function(_$IncrementImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$IncrementImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrementImpl implements _Increment {
  const _$IncrementImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.increment(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      __$$IncrementImplCopyWithImpl<_$IncrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlowerModel product) addToCart,
    required TResult Function(int index) removeCard,
    required TResult Function() clearAllCards,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
  }) {
    return increment(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlowerModel product)? addToCart,
    TResult? Function(int index)? removeCard,
    TResult? Function()? clearAllCards,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return increment?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlowerModel product)? addToCart,
    TResult Function(int index)? removeCard,
    TResult Function()? clearAllCards,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveCard value) removeCard,
    required TResult Function(_ClearAllCards value) clearAllCards,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveCard value)? removeCard,
    TResult? Function(_ClearAllCards value)? clearAllCards,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveCard value)? removeCard,
    TResult Function(_ClearAllCards value)? clearAllCards,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _Increment implements CartEvent {
  const factory _Increment(final int index) = _$IncrementImpl;

  int get index;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementImplCopyWith<$Res> {
  factory _$$DecrementImplCopyWith(
          _$DecrementImpl value, $Res Function(_$DecrementImpl) then) =
      __$$DecrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DecrementImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecrementImpl>
    implements _$$DecrementImplCopyWith<$Res> {
  __$$DecrementImplCopyWithImpl(
      _$DecrementImpl _value, $Res Function(_$DecrementImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DecrementImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecrementImpl implements _Decrement {
  const _$DecrementImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.decrement(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      __$$DecrementImplCopyWithImpl<_$DecrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlowerModel product) addToCart,
    required TResult Function(int index) removeCard,
    required TResult Function() clearAllCards,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
  }) {
    return decrement(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlowerModel product)? addToCart,
    TResult? Function(int index)? removeCard,
    TResult? Function()? clearAllCards,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
  }) {
    return decrement?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlowerModel product)? addToCart,
    TResult Function(int index)? removeCard,
    TResult Function()? clearAllCards,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveCard value) removeCard,
    required TResult Function(_ClearAllCards value) clearAllCards,
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveCard value)? removeCard,
    TResult? Function(_ClearAllCards value)? clearAllCards,
    TResult? Function(_Increment value)? increment,
    TResult? Function(_Decrement value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveCard value)? removeCard,
    TResult Function(_ClearAllCards value)? clearAllCards,
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _Decrement implements CartEvent {
  const factory _Decrement(final int index) = _$DecrementImpl;

  int get index;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<FlowerModel> get productList => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BlocStatus status, List<FlowerModel> productList,
            int totalCount, double totalCost, String? msg)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BlocStatus status, List<FlowerModel> productList,
            int totalCount, double totalCost, String? msg)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BlocStatus status, List<FlowerModel> productList,
            int totalCount, double totalCost, String? msg)?
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

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<FlowerModel> productList,
      int totalCount,
      double totalCost,
      String? msg});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productList = null,
    Object? totalCount = null,
    Object? totalCost = null,
    Object? msg = freezed,
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
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<FlowerModel> productList,
      int totalCount,
      double totalCost,
      String? msg});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productList = null,
    Object? totalCount = null,
    Object? totalCost = null,
    Object? msg = freezed,
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
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = BlocStatus.initial,
      final List<FlowerModel> productList = const [],
      this.totalCount = 0,
      this.totalCost = 0,
      this.msg})
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
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final double totalCost;
  @override
  final String? msg;

  @override
  String toString() {
    return 'CartState.initial(status: $status, productList: $productList, totalCount: $totalCount, totalCost: $totalCost, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_productList),
      totalCount,
      totalCost,
      msg);

  /// Create a copy of CartState
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
            int totalCount, double totalCost, String? msg)
        initial,
  }) {
    return initial(status, productList, totalCount, totalCost, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BlocStatus status, List<FlowerModel> productList,
            int totalCount, double totalCost, String? msg)?
        initial,
  }) {
    return initial?.call(status, productList, totalCount, totalCost, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BlocStatus status, List<FlowerModel> productList,
            int totalCount, double totalCost, String? msg)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, productList, totalCount, totalCost, msg);
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

abstract class _Initial implements CartState {
  const factory _Initial(
      {final BlocStatus status,
      final List<FlowerModel> productList,
      final int totalCount,
      final double totalCost,
      final String? msg}) = _$InitialImpl;

  @override
  BlocStatus get status;
  @override
  List<FlowerModel> get productList;
  @override
  int get totalCount;
  @override
  double get totalCost;
  @override
  String? get msg;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
