import 'package:al_audah/presentation/screens/employee/add_customer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AddCustomerButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FloatingActionButton(
        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>AddCustomerScreen()));
        },
        child: Text(
          'Add Customer',
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

}