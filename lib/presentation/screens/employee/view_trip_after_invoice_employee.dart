
import 'package:al_audah/presentation/screens/employee/manifest_screen_for_employee.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/effective_trip_details_for_employee.dart';
import 'package:al_audah/presentation/widget/effective_trip_detials_2_for_employee.dart';
import 'package:al_audah/presentation/widget/logo_image_widget.dart';
import 'package:al_audah/presentation/widget/tracking_edit_delete_invoice_buttons_in_view_trip.dart';
import 'package:al_audah/presentation/widget/trip_record_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';


class ViewTripAfterInvoiceEmployee extends StatelessWidget{

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
          TrackingEditDeleteInvoiceButtonsInViewTrip(),
          DividerBetweenListElements(),
          EffectiveTripDetailsForEmployee(),
          EffectiveTripDetails2ForEmployee(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>ManifestScreenForEmployee()));
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