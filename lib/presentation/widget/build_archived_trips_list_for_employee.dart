import 'package:al_audah/presentation/widget/archived_trip_item_for_admin.dart';
import 'package:al_audah/presentation/widget/archived_trip_item_for_employee.dart';
import 'package:flutter/cupertino.dart';
import 'divider_item.dart';

class BuildArchivedTripsListForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ArchivedTripItemForEmployee();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}