import 'package:al_audah/presentation/widget/add_powers_button.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';

class EnterEmployeeInformation extends StatefulWidget {
  @override
  State<EnterEmployeeInformation> createState() =>
      _EnterEmployeeInformationState();
}

class _EnterEmployeeInformationState extends State<EnterEmployeeInformation> {
  var employee_name = TextEditingController();
  var employee_id = TextEditingController();
  var employee_gender = TextEditingController();
  var employee_b_date = TextEditingController();
  var employee_b_place = TextEditingController();
  var employee_phone = TextEditingController();
  var employee_mobile = TextEditingController();
  var employee_address = TextEditingController();
  var employee_mother_name = TextEditingController();
  var employee_rank = TextEditingController();
  var employee_salary = TextEditingController();
  var employee_emp_date = TextEditingController();
  var birth_date = ' ';
  var emp_date = ' ';
  bool showDate = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  var gender = ["Male", "Female", ""];
  var selectedGender = "";
  var departments = ["Financial", "Warehouses",""];
  var selectedDepartment= "";

  void datePicker1(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate1 = value;
        birth_date = DateFormat('yyyy-MM-dd').format(selectedDate1);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void datePicker2(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate2,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate2 = value;
        emp_date = DateFormat('yyyy-MM-dd').format(selectedDate2);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Row(
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
                  width: screenWidth / 5.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_id,
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
            SpaceItem(),
            Row(
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
                  width: screenWidth / 10.4,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_name,
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
            SpaceItem(),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Mother',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        color: AppColors.darkBlue,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth / 14.4,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_mother_name,
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
            SpaceItem(),
            Row(
              children: [
                Text(
                  'Gender',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 14.4,
                ),
                Expanded(
                  child: Container(
                    color: AppColors.mediumBlue,
                    height: 40.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        dropdownColor: AppColors.yellow,
                        iconEnabledColor: AppColors.darkBlue,
                        items: gender.map(
                              (String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          },
                        ).toList(),
                        onChanged: (thegender) {
                          setState(() {
                            selectedGender = (thegender.toString());
                          });
                        },
                        value: selectedGender,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SpaceItem(),
            Row(
              children: [
                Text(
                  'B_Date',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 13.5,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      datePicker1(context);
                    },
                    child: Container(
                      height: 40.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: showDate
                            ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate1),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                            : Text(
                          ' ',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SpaceItem(),
            Row(
              children: [
                Text(
                  'B_Place',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 17.8,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_b_place,
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
            SpaceItem(),
            Row(
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
                  width: screenWidth / 11,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_phone,
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
            SpaceItem(),
            Row(
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
                  width: screenWidth / 11.6,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_mobile,
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
            SpaceItem(),
            Row(
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
                  width: screenWidth / 20,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_address,
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
            SpaceItem(),
            Row(
              children: [
                Text(
                  'Rank',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 8.5,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_rank,
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
            SpaceItem(),
            Row(
              children: [
                Text(
                  'Dept',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 7.8,
                ),
                Expanded(
                  child: Container(
                    color: AppColors.mediumBlue,
                    height: 40.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        dropdownColor: AppColors.yellow,
                        iconEnabledColor: AppColors.darkBlue,
                        items: departments.map(
                              (String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          },
                        ).toList(),
                        onChanged: (thedept) {
                          setState(() {
                            selectedDepartment= (thedept.toString());
                          });
                        },
                        value: selectedDepartment,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SpaceItem(),
            Row(
              children: [
                Text(
                  'Salary',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 11,
                ),
                Expanded(
                  child: TextFormField(
                    controller: employee_salary,
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
            SpaceItem(),
            Row(
              children: [
                Text(
                  'Emp_Date',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 50,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      datePicker2(context);
                    },
                    child: Container(
                      height: 40.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: showDate
                            ? Text(
                          DateFormat('yyyy-MM-dd').format(selectedDate2),
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            fontSize: 16.sp,
                          ),
                        )
                            : Text(
                          ' ',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SpaceItem(),
            AddPowersButton(),
            SpaceItem(),
          ],
        ),
      ),
    );
  }
}
