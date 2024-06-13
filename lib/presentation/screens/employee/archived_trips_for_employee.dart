import 'package:al_audah/presentation/widget/archived_trip_search_button_for_emplyee.dart';
import 'package:al_audah/presentation/widget/build_archived_trips_list_for_employee.dart';
import 'package:al_audah/presentation/widget/divider_item.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArchivedTripsForEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        ArchivedTripSearchButtonForEmployee(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildArchivedTripsListForEmployee(),
        ),
      ],
    );
  }
}
