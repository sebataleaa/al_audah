import 'package:al_audah/presentation/widget/build_trucks_list_for_b_manager.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/search_in_trucks_list_for_b_manager.dart';
import 'package:al_audah/presentation/widget/trucks_list_text.dart';
import 'package:al_audah/presentation/widget/trucks_list_text_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import 'add_truck_screen.dart';

class TrucksListForB_Manager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TrucksListText(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          TrucksListTextIntro(),
          DividerBetweenListElements(),
          SearchInTrucksListForB_Manager(),
          SizedBox(
            height: screenHeight/75,
          ),
          DividerItem(),
          Expanded(
            child: BuildTrucksListForB_Manager(),
          ),
          Container(
            width: double.infinity,
            child: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>AddTruckScreen()));
              },
              child: Text(
                'Add Truck',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0.sp,
                  color: AppColors.mediumBlue,
                ),
              ),
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(37.r),
                topLeft: Radius.circular(37.r),
              ),
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
