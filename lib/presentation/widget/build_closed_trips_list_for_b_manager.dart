
import 'package:al_audah/presentation/widget/closed_trip_item_for_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'divider_item.dart';

class BuildClosedTripsListForB_Manager extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ClosedTripItemForB_Manager();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}