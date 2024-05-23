import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class TruckInformationForEmployee extends StatelessWidget{

  String truck_id = '22544789';
  String truck_line = 'Aleppo';
  String truck_create = 'Seba Taleaa';
  String truck_last_edit = 'Seba Taleaa';
  String truck_editing_date = '25-07-2009';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'ID',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 5.5,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_id}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
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
              Text(
                'Line',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 7,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_line}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
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
              Text(
                'Create',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 10,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_create}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
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
              Text(
                'Last Edit',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 16,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_last_edit}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
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
              Column(
                children: [
                  Text(
                    'Editing',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.darkBlue,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth / 10,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${truck_editing_date}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
        ],
      ),
    );
  }

}