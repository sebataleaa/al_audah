import 'package:al_audah/presentation/widget/manifest_item.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/vacation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class BuildManifestTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ManifestItem();
      },
      separatorBuilder: (context, index) => Container(
        width: 1.h,
        color: AppColors.mediumBlue,
      ),
      itemCount: 15,
    );
  }

}