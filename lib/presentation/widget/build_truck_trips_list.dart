
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/truck_trips_item.dart';
import 'package:flutter/cupertino.dart';

class BuildTruckTripsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TruckTripsItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

}