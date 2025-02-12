import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_page_state.freezed.dart';

@freezed
abstract class MapPageState with _$MapPageState {
  const factory MapPageState({
    required List<Marker> markers,
  }) = _MapPageState;
}
