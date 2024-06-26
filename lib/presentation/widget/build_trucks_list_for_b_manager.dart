import 'package:al_audah/presentation/widget/truck_item_for_b_manager.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class BuildTrucksListForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return TruckItemForB_Manager();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}