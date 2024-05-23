import 'package:al_audah/presentation/screens/admin/add_branch_manager_screen.dart';
import 'package:al_audah/presentation/screens/admin/add_warehouse_manager_screen.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AddManagerAddWarehouseButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 40.h,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>AddBranchManager()));
                },
                child: Text(
                  'Add Manager',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    //fontWeight: FontWeight.bold,
                    fontSize: 17.0.sp,
                    color: AppColors.darkBlue,
                  ),
                ),
                backgroundColor: AppColors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r),
                  ),
                ),
                elevation: 0.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.r),
                  bottomLeft: Radius.circular(5.r),
                ),
                //color: AppColors.yellow,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 40.h,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>AddWarehouseManager()));
                },
                child: Text(
                  'Add Warehouse',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    //fontWeight: FontWeight.bold,
                    fontSize: 17.0.sp,
                    color: AppColors.mediumBlue,
                  ),
                ),
                backgroundColor: AppColors.darkBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.r),
                    bottomRight: Radius.circular(5.r),
                  ),
                ),
                elevation: 0.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.r),
                    bottomRight: Radius.circular(5.r),
                ),
                //color: AppColors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
