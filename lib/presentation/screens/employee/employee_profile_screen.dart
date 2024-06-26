
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/space_item.dart';

class EmployeeProfileScreen extends StatelessWidget{

  String user_rank = "Branch Manager";
  String user_name = "Seba Taleaa";
  String user_email = "dddff@gmail.com";
  String user_address = "UAE, Dubai";
  String user_birth = "25 jul 1990";
  String user_mobile = "0985476215";
  String start_date = "25/202/2022";
  String end_date = "25/202/2030";
  String reason = "condition";
  String duration = "6 days";

  Widget VacationItem() => Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.lightBlue,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'S : ',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bauhaus',
                        fontSize: 17.0.sp,
                      ),
                    ),
                    Text(
                      '${start_date}',
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'R : ',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bauhaus',
                        fontSize: 17.0.sp,
                      ),
                    ),
                    Text(
                      '${reason}',
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'E : ',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bauhaus',
                        fontSize: 17.0.sp,
                      ),
                    ),
                    Text(
                      '${end_date}',
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'D : ',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bauhaus',
                        fontSize: 17.0.sp,
                      ),
                    ),
                    Text(
                      '${duration}',
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );

  Widget BuildVacationList() => ListView.separated(
    itemBuilder: (context, index) {
      return VacationItem();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SpaceItem(),
          Icon(
            Icons.account_circle,
            color: AppColors.darkBlue,
            size: 120.r,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '${user_name}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 22.0.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.email_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${user_email}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.phone_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${user_mobile}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.home_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${user_address}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.cake_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: AppColors.lightBlue,
                  ),
                  child: Center(
                    child: Text(
                      '${user_birth}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'bahnschrift',
                        fontSize: 17.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                radius: 23.r,
                child: Icon(
                  Icons.edit_outlined,
                  color: AppColors.mediumBlue,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: ()
                  {},
                  child: Container(
                    margin: EdgeInsets.only(left: 5.w),
                    width: double.infinity,
                    height: 42.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(31.r),
                      color: AppColors.lightBlue,
                    ),
                    child: Center(
                      child: Text(
                        'Edit Information',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 17.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Text(
            'Vacations',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontSize: 17.0.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SpaceItem(),
          Expanded(child: BuildVacationList()),
        ],
      ),
    );
  }

}