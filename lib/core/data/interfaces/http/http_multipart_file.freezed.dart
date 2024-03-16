// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_multipart_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpMultipartFile {
  String get field => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpMultipartFileCopyWith<HttpMultipartFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpMultipartFileCopyWith<$Res> {
  factory $HttpMultipartFileCopyWith(
          HttpMultipartFile value, $Res Function(HttpMultipartFile) then) =
      _$HttpMultipartFileCopyWithImpl<$Res, HttpMultipartFile>;
  @useResult
  $Res call({String field, File file});
}

/// @nodoc
class _$HttpMultipartFileCopyWithImpl<$Res, $Val extends HttpMultipartFile>
    implements $HttpMultipartFileCopyWith<$Res> {
  _$HttpMultipartFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpMultipartFileImplCopyWith<$Res>
    implements $HttpMultipartFileCopyWith<$Res> {
  factory _$$HttpMultipartFileImplCopyWith(_$HttpMultipartFileImpl value,
          $Res Function(_$HttpMultipartFileImpl) then) =
      __$$HttpMultipartFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, File file});
}

/// @nodoc
class __$$HttpMultipartFileImplCopyWithImpl<$Res>
    extends _$HttpMultipartFileCopyWithImpl<$Res, _$HttpMultipartFileImpl>
    implements _$$HttpMultipartFileImplCopyWith<$Res> {
  __$$HttpMultipartFileImplCopyWithImpl(_$HttpMultipartFileImpl _value,
      $Res Function(_$HttpMultipartFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? file = null,
  }) {
    return _then(_$HttpMultipartFileImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$HttpMultipartFileImpl implements _HttpMultipartFile {
  const _$HttpMultipartFileImpl({required this.field, required this.file});

  @override
  final String field;
  @override
  final File file;

  @override
  String toString() {
    return 'HttpMultipartFile(field: $field, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpMultipartFileImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpMultipartFileImplCopyWith<_$HttpMultipartFileImpl> get copyWith =>
      __$$HttpMultipartFileImplCopyWithImpl<_$HttpMultipartFileImpl>(
          this, _$identity);
}

abstract class _HttpMultipartFile implements HttpMultipartFile {
  const factory _HttpMultipartFile(
      {required final String field,
      required final File file}) = _$HttpMultipartFileImpl;

  @override
  String get field;
  @override
  File get file;
  @override
  @JsonKey(ignore: true)
  _$$HttpMultipartFileImplCopyWith<_$HttpMultipartFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
