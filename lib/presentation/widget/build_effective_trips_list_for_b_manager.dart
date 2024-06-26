
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'divider_item.dart';
import 'open_trip_item_for_b_manager.dart';

class BuildOpenTripsListForB_Manager extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return OpenTripItemForB_Manager();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}