import 'package:al_audah/presentation/screens/admin/prices_list_screen.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class PricesListButtonForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 40.h,
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>PricesListScreen()));
          },
          child: Text(
            'Prices List',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              //fontWeight: FontWeight.bold,
              fontSize: 17.0.sp,
              color: AppColors.darkBlue,
            ),
          ),
          backgroundColor: AppColors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          elevation: 0.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          //color: AppColors.yellow,
        ),
      ),
    );
  }
}