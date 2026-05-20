import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String id,
    required String name,
    required String imagePath,
    required String description,
  }) = _Exercise;
}
