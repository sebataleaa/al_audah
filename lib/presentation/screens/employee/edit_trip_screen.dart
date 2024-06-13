import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/driver_truck_in_edit_trip_screen.dart';
import 'package:al_audah/presentation/widget/hello_enter_new_information_text.dart';
import 'package:al_audah/presentation/widget/information_in_edit_trip_screen.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/trip_information_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/save_button_in_edit_trip_screen.dart';
import '../../widget/trip_record_text.dart';
import '../../widget/user_info_in_edit_trip_screen.dart';

class EditTripScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripInformationText(),
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
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceItem(),
          HelloEnterNewInformationText(),
          DividerSpaceItem(),
          InformationInEditTripScreen(),
          DividerSpaceItem(),
          DriverTruckInEditTripScreen(),
          DividerSpaceItem(),
          UserInfoInEditTripScreen(),
          SpaceItem(),
          Align(
            alignment: Alignment.bottomCenter,
              child: SaveButtonInEditTripScreen(),
          ),
        ],
      ),
    );
  }

}