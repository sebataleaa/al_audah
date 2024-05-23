import 'package:al_audah/presentation/widget/driver_trip_item.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';


class BuildDriverTripsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return DriverTripItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

}