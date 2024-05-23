
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';
import 'driver_item_b_manager.dart';


class BuildDriversListB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return DriverItemB_Manager();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}