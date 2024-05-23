import 'package:al_audah/presentation/widget/add_branch_warehouse_information.dart';
import 'package:al_audah/presentation/widget/add_warehouse_text.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';

class AddWarehouseScreen extends StatefulWidget{

  @override
  State<AddWarehouseScreen> createState() => _AddWarehouseScreenState();
}

class _AddWarehouseScreenState extends State<AddWarehouseScreen> {

  _showOption (BuildContext context){
    return showDialog(
      context: context,
      builder: (context) =>AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40.h,
                child: FloatingActionButton(
                  onPressed: (){},
                  child: Text(
                    'New Manager',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 17.0.sp,
                      color: AppColors.mediumBlue,
                    ),
                  ),
                  backgroundColor: AppColors.darkBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.darkBlue,
                ),
              ),
              SpaceItem(),
              Container(
                width: double.infinity,
                height: 40.h,
                child: FloatingActionButton(
                  onPressed: (){},
                  child: Text(
                    'Employee',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      fontSize: 17.0.sp,
                      color: AppColors.darkBlue,
                    ),
                  ),
                  backgroundColor: AppColors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget AddWarehouseButton(){
    return Container(
      width: double.infinity,
      height: 50.h,
      child: FloatingActionButton(
        onPressed: (){
          _showOption(context);
        },
        child: Text(
          'Add Warehouse Manager',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
            child: AddWarehouseText(),
        ),
        leading: IconButton(
          onPressed: () {},
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
            'Please Fill This Field',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          DividerBetweenListElements(),
          SpaceItem(),
          Expanded(
              child: AddBranchWarehouseInformation(),
          ),
          SpaceItem(),
          SpaceItem(),
          AddWarehouseButton(),
        ],
      ),
    );
  }
}