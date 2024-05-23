import 'package:al_audah/presentation/widget/branch_information_text.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/branch_information_for_employee.dart';
import '../../widget/divider_item.dart';

class ViewBranchInformationScreen extends StatefulWidget {
  @override
  State<ViewBranchInformationScreen> createState() =>
      _ViewBranchInformationScreenState();
}

class _ViewBranchInformationScreenState extends State<ViewBranchInformationScreen> {

  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  Widget RowTableItem(){
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20.0),
     child: Row(
       children: [
         Expanded(
           child: Text(
             '${trip}',
             style: TextStyle(
               color: AppColors.pureBlack,
               fontFamily: 'bahnschrift',
               fontSize: 16.sp,
             ),
           ),
         ),
         Expanded(
           child: Text(
             '${driver}',
             style: TextStyle(
               color: AppColors.pureBlack,
               fontFamily: 'bahnschrift',
               fontSize: 16.sp,
             ),
           ),
         ),
         Expanded(
           child: Text(
             '${date}',
             style: TextStyle(
               color: AppColors.pureBlack,
               fontFamily: 'bahnschrift',
               fontSize: 16.sp,
             ),
           ),
         ),
       ],
     ),
   );
  }

  Widget buildTripsTable(){
    return ListView.separated(
      itemBuilder: (context, index) {
        return RowTableItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: BranchInformationText(),
        ),
        leading: IconButton(
          onPressed: () {},
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
          SpaceItem(),
          BranchInformationForEmployee(),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Trip',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Driver',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Expanded(
                    child: Text(
                      'Date',
                      style: TextStyle(
                        color: AppColors.yellow,
                        fontFamily: 'bahnschrift',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                ),
              ],
            ),
          ),
          SpaceItem(),
          Expanded(
              child: buildTripsTable(),
          ),
        ],
      ),
    );
  }
}
