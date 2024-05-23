import 'package:al_audah/presentation/widget/build_archived_manifest_table.dart';
import 'package:al_audah/presentation/widget/manifest_table_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_between_list_elements.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';
import '../../widget/trip_record_text.dart';

class ArchivedManifestScreenForAdmin extends StatelessWidget{

  String manifest_id = 'DM-1-4539';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight/75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Manifest  ${manifest_id}',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                LogoImageWidget(),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                border: Border.all(
                  color: AppColors.darkBlue,
                ),
              ),
              margin:  EdgeInsets.only(top: 20.0,left: 20.0),
              child: Row(
                children: [
                  ManifestTableHeader(),
                  Container(
                    width: 1.h,
                    color: AppColors.darkBlue,
                  ),
                  Expanded(
                    child: BuildArchivedManifestTable(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
