import 'package:al_audah/presentation/widget/truck_information_for_employee.dart';
import 'package:al_audah/presentation/widget/truck_information_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';
import '../../widget/trip_driver_date_row.dart';

class ViewTruckForEmployee extends StatelessWidget{

  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  Widget RowTableItem(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: (){},
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
          child: TruckInformationText(),
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
          TruckInformationForEmployee(),
          DividerItem(),
          SpaceItem(),
          TripDriverDateRow(),
          SpaceItem(),
          Expanded(
            child: buildTripsTable(),
          ),
        ],
      ),
    );
  }

}