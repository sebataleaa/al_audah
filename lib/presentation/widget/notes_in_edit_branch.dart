import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class NotesInEditBranch extends StatelessWidget{

  String notes = 'no thing';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: screenHeight / 110,
          ),
          Container(
            height: 80.h,
            color: AppColors.mediumBlue,
            child: TextFormField(
              // controller: customer_notes,
              cursorColor: AppColors.darkBlue,
              style: TextStyle(overflow: TextOverflow.ellipsis),
              maxLines: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.mediumBlue,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

}