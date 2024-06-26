import 'package:al_audah/presentation/widget/divider_item.dart';
import 'package:al_audah/presentation/widget/effective_trip_search_button_b_manager.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/build_closed_trips_list_for_b_manager.dart';
import '../../widget/build_effective_trips_list_for_b_manager.dart';


class ClosedTripsForB_Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SpaceItem(),
        // EffectiveTripSearchButtonB_Manager(),
        // SpaceItem(),
        // DividerItem(),
        Expanded(
          child: BuildClosedTripsListForB_Manager(),
        ),
      ],
    );
  }
}
