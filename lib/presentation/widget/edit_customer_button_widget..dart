import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class EditCustomerButtonWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.h,
      child: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: AppColors.yellow,
        ),
        elevation: 0.0,
        backgroundColor: AppColors.darkBlue,
      ),
    );
  }

}