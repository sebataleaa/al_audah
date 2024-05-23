import 'package:al_audah/presentation/widget/delete_customer_button_widget.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/edit_customer_button_widget..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/customer_information_text.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';

class CustomersViewForEmployee extends StatefulWidget {
  @override
  State<CustomersViewForEmployee> createState() => _CustomersViewForEmployeeState();
}

class _CustomersViewForEmployeeState extends State<CustomersViewForEmployee> {

  String customer_name = 'Seba Taleaa';
  String customer_id = '0310665335';
  String customer_phone = '67315963';
  String customer_mobile = '0988022813';
  String customer_address = 'Damasccus';
  String customer_address_details = 'Damascus, Sahnaya';
  String customer_notes = 'no thing';



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: CustomerInformationText(),
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
          SizedBox(
            height: screenHeight / 75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeleteCustomerButtonWidget(),
                LogoImageWidget(),
                EditCustomerButtonWidget(),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'ID',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth/7,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${customer_id}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth/14.3,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${customer_name}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Phone',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth/17,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${customer_phone}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Mobile',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth/19,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${customer_mobile}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Address',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth/60,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${customer_address}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth/60,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${customer_address_details}',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DividerBetweenListElements(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notes',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: screenHeight/110,
                ),
                Container(
                  height: 100.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '${customer_notes}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
