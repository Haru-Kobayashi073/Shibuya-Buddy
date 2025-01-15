// lib/presentation/pages/google_map_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/plan.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import './map_page_notifier.dart';
import 'components/day_tab_bar.dart';

class MapPage extends HookConsumerWidget {
  const MapPage({super.key, required this.plan});
  final Plan plan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(mapNotifierProvider);
    final mapController = useState<GoogleMapController?>(null);

    useEffect(
      () {
        Future.microtask(() async {
          await ref.read(mapNotifierProvider.notifier).loadCurrentLocation();
        });

        return null;
      },
      [],
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.blue50Background,
          title: Text(
            '東京一泊二日',
            style: AppTextStyle.textStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
            child: const DayTabBar(),
          ),
        ),
        body: location == null
            ? const Center(child: CircularProgressIndicator())
            : GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(location.latitude, location.longitude),
                  zoom: 14,
                ),
                onMapCreated: (controller) => mapController.value = controller,
              ),
      ),
    );
  }
}
