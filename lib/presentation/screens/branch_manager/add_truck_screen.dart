import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/enter_new_truck_text.dart';
import 'package:al_audah/presentation/widget/enter_notes_in_add_truck_screen.dart';
import 'package:al_audah/presentation/widget/enter_truck_information.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/add_truck_text.dart';
import '../../widget/divider_item.dart';
import '../../widget/enter_user_info_in_add_truck_screen.dart';

class AddTruckScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AddTruckText(),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: (){},
            child: Text(
              'Add',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bauhaus',
                fontSize: 17.sp,
              ),
            ),
          ),
        ],
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
        children: [
          SpaceItem(),
          EnterNewTruckText(),
          DividerSpaceItem(),
          EnterTruckInformation(),
          DividerSpaceItem(),
          EnterUserInfoInAddTruckScreen(),
          DividerSpaceItem(),
          EnterNotesInAddTruckScreen(),
          SpaceItem(),
        ],
      ),
    );
  }

}