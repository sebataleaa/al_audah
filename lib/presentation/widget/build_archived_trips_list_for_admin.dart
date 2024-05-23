import 'package:al_audah/presentation/widget/archived_trip_item_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'divider_item.dart';

class BuildArchivedTripsListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ArchivedTripItemForAdmin();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}