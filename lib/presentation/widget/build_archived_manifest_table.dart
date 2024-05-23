import 'package:al_audah/presentation/widget/manifest_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import 'archived_manifest_item.dart';

class BuildArchivedManifestTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ArchivedManifestItem();
      },
      separatorBuilder: (context, index) => Container(
        width: 1.h,
        color: AppColors.mediumBlue,
      ),
      itemCount: 15,
    );
  }

}