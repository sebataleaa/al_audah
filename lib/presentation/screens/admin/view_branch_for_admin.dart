import 'package:al_audah/presentation/widget/branch_information_for_admin.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/branch_information_text.dart';
import '../../widget/divider_item.dart';
import '../../widget/prices_list_button_for_admin.dart';
import '../../widget/row_for_edit_delete_branch.dart';
import '../../widget/space_item.dart';
import '../../widget/trip_driver_date_row.dart';

class ViewBranchForAdmin extends StatelessWidget{

  String trip = 'DM-1-600';
  String driver = 'Mohammed Ali Hwidi';
  String date = '25-07-2009';

  Widget RowTableItem(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
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
    double screenHeight = MediaQuery.of(context).size.height;
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
          SizedBox(
            height: screenHeight / 75,
          ),
          RowForEditDeleteBranch(),
          DividerBetweenListElements(),
          BranchInformationForAdmin(),
          DividerBetweenListElements(),
          PricesListButtonForAdmin(),
          DividerBetweenListElements(),
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