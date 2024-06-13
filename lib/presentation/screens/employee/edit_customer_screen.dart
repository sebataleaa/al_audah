import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/edit_customer_info_for_employee.dart';
import 'package:al_audah/presentation/widget/edit_notes_in_edit_customer_screen.dart';
import 'package:al_audah/presentation/widget/edit_screens_text_intro.dart';
import 'package:al_audah/presentation/widget/edit_user_info_in_edit_customer_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../constants/app_colors.dart';
import '../../widget/customer_information_text.dart';
import '../../widget/divider_item.dart';

class EditCustomerScreen extends StatefulWidget {
  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {

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
          EditScreensTextIntro(),
          SizedBox(
            height: screenHeight / 75,
          ),
          DividerItem(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: screenHeight / 75,
                ),
                EditCustomerInfoForEmployee(),
                EditNotesInEditCustomerScreen(),
                DividerBetweenListElements(),
                EditUserInfoInEditCustomerScreen(),
                SizedBox(
                  height: screenHeight / 75,
                ),
              ],
            ),
          ),
          SaveButton(),
        ],
      ),
    );
  }
}

Widget SaveButton() => Container(
  width: double.infinity,
  child: FloatingActionButton(
    onPressed: () {},
    child: Text(
      'Save',
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