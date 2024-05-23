import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AddBranchWarehouseInformation extends StatelessWidget{

  var branch_name = TextEditingController();
  var warehouse_name = TextEditingController();
  var warehouse_location = TextEditingController();
  var notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 70.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.lightBlue,
          ),
          child: ListView(
            children: [
              Text(
                'Branch Name',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                child: TextFormField(
                  controller: branch_name,
                  cursorColor: AppColors.darkBlue,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.pureWhite,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'this field must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              SpaceItem(),
              Text(
                'Warehouse Name',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                child: TextFormField(
                  controller: warehouse_name,
                  cursorColor: AppColors.darkBlue,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.pureWhite,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'this field must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              SpaceItem(),
              Text(
                'Location',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                child: TextFormField(
                  controller: warehouse_location,
                  cursorColor: AppColors.darkBlue,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.pureWhite,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'this field must not be empty';
                    }
                    return null;
                  },
                ),
              ),
              SpaceItem(),
              Text(
                'Notes',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 44.h,
                child: TextFormField(
                  controller: notes,
                  cursorColor: AppColors.darkBlue,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.pureWhite,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'this field must not be empty';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}