import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';

import '../../widget/build_driver_trips_list.dart';
import '../../widget/trip_destination_date_row.dart';

class DriverTripsTabB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        TripDestinationDateRow(),
        SpaceItem(),
        Expanded(child: BuildDriverTripsList()),
        SpaceItem(),
      ],
    );
  }

}