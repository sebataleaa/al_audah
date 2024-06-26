import 'package:al_audah/presentation/widget/build_truck_trips_list.dart';
import 'package:al_audah/presentation/widget/delete_edit_buttons_in_view_truck_b_manager.dart';
import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/truck_information_for_b_manger.dart';
import 'package:al_audah/presentation/widget/truck_information_for_employee.dart';
import 'package:al_audah/presentation/widget/truck_information_text.dart';
import 'package:al_audah/presentation/widget/truck_trips_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';
import '../../widget/trip_driver_date_row.dart';

class ViewTruckForB_Manager extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TruckInformationText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          SpaceItem(),
          DeleteEditButtonsInViewTruckB_Manager(),
          DividerSpaceItem(),
          TruckInformationForB_Manager(),
          DividerItem(),
          SpaceItem(),
          TruckTripsIntro(),
          SpaceItem(),
          Expanded(
            child: BuildTruckTripsList(),
          ),
        ],
      ),
    );
  }

}