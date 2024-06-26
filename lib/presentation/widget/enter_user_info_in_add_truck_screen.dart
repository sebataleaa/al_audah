import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';

class EnterUserInfoInAddTruckScreen extends StatefulWidget{

  @override
  State<EnterUserInfoInAddTruckScreen> createState() => _EnterUserInfoInAddTruckScreenState();
}

class _EnterUserInfoInAddTruckScreenState extends State<EnterUserInfoInAddTruckScreen> {

  var creator_name = 'Seba Taleaa';
  var date_added = ' ';
  bool showDate = false;
  DateTime selectedDate = DateTime.now();

  void datePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate = value;
        date_added = DateFormat('yyyy-MM-dd').format(selectedDate);
        showDate = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'User Information',
            style: TextStyle(
              color: AppColors.yellow,
              fontSize: 17.sp,
              fontFamily: 'bahnschrift',
            ),
          ),
          SpaceItem(),
          Text(
            'Create',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
          Container(
            height: 44.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10.0.w,vertical: 13.0.h),
            color: AppColors.mediumBlue,
            child: Text(
              '${creator_name}',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          SpaceItem(),
          Text(
            'Date Added',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
          GestureDetector(
            onTap: () {
              datePicker(context);
            },
            child: Container(
              height: 44.h,
              width: double.infinity,
              color: AppColors.mediumBlue,
              padding: EdgeInsets.symmetric(horizontal: 10.0.w,vertical: 13.0.h),
              child: showDate
                  ? Text(
                DateFormat('yyyy-MM-dd')
                    .format(selectedDate),
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              )
                  : Text(
                ' ',
              ),
            ),
          ),
        ],
      ),
    );
  }
}