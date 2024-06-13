import 'package:al_audah/presentation/widget/add_trip_text.dart';
import 'package:al_audah/presentation/widget/enter_trip_information.dart';
import 'package:al_audah/presentation/widget/hello_enter_new_information_text.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/thank_u_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';

class AddTripScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddTripText(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceItem(),
          HelloEnterNewInformationText(),
          SpaceItem(),
          DividerItem(),
          Expanded(child: EnterTripInformation()),
          DividerItem(),
          ThankUText(),
          SpaceItem(),
          AddTripButton(),
        ],
      ),
    );
  }

  Widget AddTripButton() => Container(
    width: double.infinity,
    child: FloatingActionButton(
      onPressed: (){},
      child: Text(
        'Add Trip',
        style: TextStyle(
          fontFamily: 'bahnschrift',
          fontWeight: FontWeight.bold,
          fontSize: 17.0.sp,
          color: AppColors.mediumBlue,
        ),
      ),
      backgroundColor: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(37.r),
          topLeft: Radius.circular(37.r),
        ),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(37.r),
      color: AppColors.darkBlue,
    ),
  );

}