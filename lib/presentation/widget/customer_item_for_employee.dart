import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class  CustomerItemForEmployee extends StatelessWidget{

  String customerName = 'Seba Taleaa';

  _deleteCustomer (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this customer ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${customerName}',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
          ),
          Container(
            height: 35.h,
            decoration: BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: TextButton(
              onPressed: (){},
              child: Text(
                'View',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Text(
              'Edit',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              _deleteCustomer(context);
            },
            child: Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

}