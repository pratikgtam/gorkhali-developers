// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LandingState {
  LandingPageItems get landingPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingStateCopyWith<LandingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingStateCopyWith<$Res> {
  factory $LandingStateCopyWith(
          LandingState value, $Res Function(LandingState) then) =
      _$LandingStateCopyWithImpl<$Res, LandingState>;
  @useResult
  $Res call({LandingPageItems landingPage});
}

/// @nodoc
class _$LandingStateCopyWithImpl<$Res, $Val extends LandingState>
    implements $LandingStateCopyWith<$Res> {
  _$LandingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landingPage = null,
  }) {
    return _then(_value.copyWith(
      landingPage: null == landingPage
          ? _value.landingPage
          : landingPage // ignore: cast_nullable_to_non_nullable
              as LandingPageItems,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LandingStateImplCopyWith<$Res>
    implements $LandingStateCopyWith<$Res> {
  factory _$$LandingStateImplCopyWith(
          _$LandingStateImpl value, $Res Function(_$LandingStateImpl) then) =
      __$$LandingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LandingPageItems landingPage});
}

/// @nodoc
class __$$LandingStateImplCopyWithImpl<$Res>
    extends _$LandingStateCopyWithImpl<$Res, _$LandingStateImpl>
    implements _$$LandingStateImplCopyWith<$Res> {
  __$$LandingStateImplCopyWithImpl(
      _$LandingStateImpl _value, $Res Function(_$LandingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landingPage = null,
  }) {
    return _then(_$LandingStateImpl(
      landingPage: null == landingPage
          ? _value.landingPage
          : landingPage // ignore: cast_nullable_to_non_nullable
              as LandingPageItems,
    ));
  }
}

/// @nodoc

class _$LandingStateImpl extends _LandingState {
  const _$LandingStateImpl({this.landingPage = LandingPageItems.myServices})
      : super._();

  @override
  @JsonKey()
  final LandingPageItems landingPage;

  @override
  String toString() {
    return 'LandingState(landingPage: $landingPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandingStateImpl &&
            (identical(other.landingPage, landingPage) ||
                other.landingPage == landingPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, landingPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LandingStateImplCopyWith<_$LandingStateImpl> get copyWith =>
      __$$LandingStateImplCopyWithImpl<_$LandingStateImpl>(this, _$identity);
}

abstract class _LandingState extends LandingState {
  const factory _LandingState({final LandingPageItems landingPage}) =
      _$LandingStateImpl;
  const _LandingState._() : super._();

  @override
  LandingPageItems get landingPage;
  @override
  @JsonKey(ignore: true)
  _$$LandingStateImplCopyWith<_$LandingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
