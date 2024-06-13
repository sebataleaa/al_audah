
import 'package:al_audah/presentation/widget/build_effective_trips_list_for_employee.dart';
import 'package:al_audah/presentation/widget/divider_item.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widget/add_trip_button_employee.dart';
import '../../widget/effective_trip_search_button_for_employee.dart';

class EffectiveTripsForEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        EffevtiveTripSearchButtonForEmployee(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildEffectiveTripsListForEmployee(),
        ),
        AddTripButtonEmployee(),
      ],
    );
  }
}
