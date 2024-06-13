
import 'package:al_audah/presentation/screens/employee/edit_trip_screen.dart';
import 'package:al_audah/presentation/screens/employee/tracking_screen_for_employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class TrackingEditDeleteInvoiceButtonsInViewTrip extends StatelessWidget{

  _deleteTrip (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this trip ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                _deleteTrip(context);
              },
              child: Icon(
                Icons.delete,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "dd",
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
               // Navigator.push(context, MaterialPageRoute(builder:(context)=>TrackingScreenForEmployee())); هاد لطباعة الفاتورة منعمله بعدين
              },
              child: Icon(
                Icons.print,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "ii",
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>TrackingScreenForEmployee()));
              },
              child: Icon(
                Icons.location_on,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "tt",
            ),
          ),
          Container(
            height: 40.h,
            width: 40.h,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>EditTripScreen()));
              },
              child: Icon(
                Icons.edit,
                color: AppColors.yellow,
              ),
              elevation: 0.0,
              backgroundColor: AppColors.darkBlue,
              heroTag: "ee",
            ),
          ),
        ],
      ),
    );
  }

}