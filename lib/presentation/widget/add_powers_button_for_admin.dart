import 'package:al_audah/presentation/screens/admin/add_powers_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AddPowersButtonForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.h,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>AddPowersAdmin()));
        },
        heroTag: 10,
        child: Text(
          'Add Powers',
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
    );
  }

}