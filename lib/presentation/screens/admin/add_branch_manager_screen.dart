import 'package:al_audah/presentation/widget/enter_bManager_information.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/add_manager_text.dart';
import '../../widget/divider_between_list_elements.dart';
import '../../widget/divider_item.dart';

class AddBranchManager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddManagerText(),
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
          Text(
            'Please Enter Manager Information',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          DividerBetweenListElements(),
          SpaceItem(),
          Expanded(child: EnterBManagerInformation()),
          AddManagerButton(),
        ],
      ),
    );
  }

  Widget AddManagerButton() => Container(
    width: double.infinity,
    child: FloatingActionButton(
      onPressed: (){},
      child: Text(
        'Add',
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