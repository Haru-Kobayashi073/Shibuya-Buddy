import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String uid,
    String? name,
    String? imageUrl,
    @Default([]) List<String> bookmarkedPlanIds,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updateAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
