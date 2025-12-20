import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  const factory AppException.unexpected(dynamic error) = _Unexpected;
  const factory AppException.validation(String message) = _Validation;
  const factory AppException.generator(String message) = _Generator;
}
