import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/divider_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/add_customer_text.dart';

class AddCustomerScreen extends StatefulWidget{
  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {

  var customer_name = TextEditingController();
  var customer_id = TextEditingController();
  var customer_phone = TextEditingController();
  var customer_mobile = TextEditingController();
  var customer_address = TextEditingController();
  var customer_address_details = TextEditingController();
  var customer_notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddCustomerText(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight/75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Hello!',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Please Enter The Following Information',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight/75,
          ),
          DividerItem(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: screenHeight/75,
                ),
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
                        child: TextFormField(
                          controller: customer_id,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        child: TextFormField(
                          controller: customer_name,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        child: TextFormField(
                          controller: customer_phone,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        child: TextFormField(
                          controller: customer_mobile,
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        child: TextFormField(
                          controller: customer_address,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        child: TextFormField(
                          controller: customer_address_details,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
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
                        child: TextFormField(
                          controller: customer_notes,
                          cursorColor: AppColors.darkBlue,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 5,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.mediumBlue,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
              ],
            ),
          ),
          AddCustomerButton(),
        ],
      ),
    );
  }
}

Widget AddCustomerButton() => Container(
  width: double.infinity,
  child: FloatingActionButton(
    onPressed: (){},
    child: Text(
      'Add Customer',
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
    borderRadius: BorderRadius.circular(37.r),
    color: AppColors.darkBlue,
  ),
);