
import 'package:al_audah/presentation/widget/effective_trip_item_for_employee.dart';
import 'package:flutter/cupertino.dart';
import 'divider_item.dart';

class BuildEffectiveTripsListForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return EffectiveTripItemForEmployee();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}