import 'package:al_audah/presentation/screens/branch_manager/view_warehouse_for_b_manager.dart';
import 'package:al_audah/presentation/widget/about_us_branch_info.dart';
import 'package:al_audah/presentation/widget/about_us_company_info.dart';
import 'package:al_audah/presentation/widget/about_us_who_are_we.dart';
import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/prices_list_button_for_b_manager.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';

class AboutUsScreenForB_Manager extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AboutUsWhoAreWe(),
        DividerSpaceItem(),
        AboutUsCompanyInfo(),
        DividerSpaceItem(),
        AboutUsBranchInfo(),
        SpaceItem(),
        PricesListButtonForB_Manager(),
        SpaceItem(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            width: double.infinity,
            height: 40.h,
            child: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewWarehouseForB_Manager()));
              },
              child: Text(
                'WareHouse',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontSize: 17.0.sp,
                  color: AppColors.pureWhite,
                ),
              ),
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              elevation: 0.0,
              heroTag: 'warehouse',
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              //color: AppColors.yellow,
            ),
          ),
        ),
        SpaceItem(),
      ],
    );
  }

}