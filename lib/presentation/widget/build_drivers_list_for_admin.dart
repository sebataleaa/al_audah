
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';
import 'driver_item_for_admin.dart';

class BuildDriversListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return DriverItemForAdmin();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}