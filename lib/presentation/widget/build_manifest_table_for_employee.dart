
import 'package:al_audah/presentation/widget/manifest_item_for_employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class BuildManifestTableForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ManifestItemForEmployee();
      },
      separatorBuilder: (context, index) => Container(
        width: 1.h,
        color: AppColors.mediumBlue,
      ),
      itemCount: 15,
    );
  }

}