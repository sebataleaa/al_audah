
import 'package:al_audah/presentation/screens/branch_manager/manifest_screen_for_b_manager.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/open_trip_details_for_b_manager.dart';
import 'package:al_audah/presentation/widget/open_trip_detials_2_for_b_manager.dart';
import 'package:al_audah/presentation/widget/logo_image_widget.dart';
import 'package:al_audah/presentation/widget/trip_record_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_colors.dart';
import '../screens/branch_manager/closed_manifest_for_b_manager.dart';
import 'closed_trip_details_2_for_b_manager.dart';
import 'closed_trip_details_for_b_manager.dart';
import 'divider_item.dart';

class ClosedTripRecordForB_Manager extends StatelessWidget{

  String manifest_id = 'DM-1-7099';

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
      body: ListView(
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
          ClosedTripDetailsForB_Manager(),
          ClosedTripDetails2ForB_Manager(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>ClosedManifestForB_Manager()));
        },
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
        child: Icon(
          Icons.read_more_rounded,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }

}