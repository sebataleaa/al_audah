import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class VacationsText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Va',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: AppColors.yellow,
            ),
          ),
          TextSpan(
            text: 'cati',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: AppColors.darkBlue,
            ),
          ),
          TextSpan(
            text: 'ons',
            style: TextStyle(
              fontSize: 23.sp,
              fontFamily: 'ScriptMT',
              color: AppColors.yellow,
            ),
          ),
        ],
      ),
    );
  }

}