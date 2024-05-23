import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class DividerItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      color: AppColors.darkBlue,
    );
  }

}