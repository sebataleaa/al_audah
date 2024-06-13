import 'package:al_audah/presentation/screens/employee/view_trip_after_invoice_employee.dart';
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

class _ViewBranchInformationScreenState
    extends State<ViewBranchInformationScreen> {
  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  Widget RowTableItem() {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewTripAfterInvoiceEmployee() /*ViewTripBeforInvoiceEmployee()*/));
      },
      child: Container(
        height: 80.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 20.0.w),
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                '${trip}',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${driver}',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '${date}',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTripsTable() {
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
          SpaceItem(),
          BranchInformationForEmployee(),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
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
