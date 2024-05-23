import 'package:al_audah/presentation/widget/truck_item_for_employee.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class BuildTrucksListForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TruckItemForEmployee();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}