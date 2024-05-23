import 'package:al_audah/presentation/widget/build_drivers_list_for_admin.dart';
import 'package:al_audah/presentation/widget/search_driver_button.dart';
import 'package:flutter/cupertino.dart';

import '../../widget/divider_item.dart';

import '../../widget/space_item.dart';

class DriversListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        SearchDriverButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildDriversListForAdmin(),
        ),
      ],
    );
  }

}