import 'package:al_audah/presentation/widget/edit_screens_text_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../constants/app_colors.dart';
import '../../widget/customer_information_text.dart';
import '../../widget/divider_item.dart';

class EditCustomerScreen extends StatefulWidget {
  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {
  String customer_name = 'Seba Taleaa';
  String customer_id = '0310665335';
  String customer_phone = '67315963';
  String customer_mobile = '0988022813';
  String customer_address = 'Damasccus';
  String customer_address_details = 'Damascus, Sahnaya';
  String customer_notes = 'no thing';
  String creator_name = 'Lilian Kabool';
  var editing_date = 'Enter Date';
  var editor_name = TextEditingController();
  String editedID = '';
  String editedName = '';
  String editedPhone = '';
  String editedMobile = '';
  String editedAddress = '';
  String editedAddressDetails = '';
  bool showDate = false;
  // late DateTime selectedDate;
  DateTime selectedDate = DateTime.now();

  void datePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate = value;
        editing_date = DateFormat('yyyy-MM-dd').format(selectedDate);
        showDate = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void _editID() {
    TextEditingController customer_id_controller = TextEditingController(text: customer_id);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit ID',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_id_controller ,
            onChanged: (value) {
              editedID = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  customer_id = editedName;
                });
                customer_id_controller.text = customer_id;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editName() {
    TextEditingController customer_name_controller = TextEditingController(text: customer_name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Name',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_name_controller,
            onChanged: (value) {
              editedName = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  customer_name = editedName;
                });
                customer_name_controller.text = customer_name;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPhone() {
    TextEditingController customer_phone_controller = TextEditingController(text: customer_phone);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Phone',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_phone_controller,
            onChanged: (value) {
              editedPhone = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  customer_phone = editedPhone;
                });
                customer_phone_controller.text = customer_phone;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editMobile() {
    TextEditingController customer_mobile_controller = TextEditingController(text: customer_mobile);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Mobile',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_mobile_controller,
            onChanged: (value) {
              editedMobile = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  customer_mobile = editedMobile;
                });
                customer_mobile_controller.text = customer_mobile;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddress() {
    TextEditingController customer_address_controller = TextEditingController(text: customer_address);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Address',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_address_controller,
            onChanged: (value) {
              editedAddress = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  customer_address = editedAddress;
                });
                customer_address_controller.text = customer_address;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editAddressDetails() {
    TextEditingController customer_address_details_controller = TextEditingController(text: customer_address_details);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Address Details',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: customer_address_details_controller ,
            onChanged: (value) {
              editedAddressDetails = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  customer_address_details = editedAddressDetails;
                });
                customer_address_details_controller .text = customer_address_details;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
                        width: screenWidth / 7,
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
                      Container(
                        color: AppColors.mediumBlue,
                        height: 40.h,
                        child: IconButton(
                          onPressed: () {
                            _editID();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: AppColors.yellow,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
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
                        width: screenWidth / 14.3,
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
                      IconButton(
                        onPressed: () {
                          _editName();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
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
                        width: screenWidth / 17,
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
                      IconButton(
                        onPressed: () {
                          _editPhone();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
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
                        width: screenWidth / 19,
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
                      IconButton(
                        onPressed: () {
                          _editMobile();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
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
                        width: screenWidth / 60,
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
                      IconButton(
                        onPressed: () {
                          _editAddress();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
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
                        width: screenWidth / 50,
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
                      IconButton(
                        onPressed: () {
                          _editAddressDetails();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: AppColors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 75,
                ),
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notes',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 110,
                      ),
                      Container(
                        height: 80.h,
                        color: AppColors.mediumBlue,
                        child: TextFormField(
                          // controller: customer_notes,
                          cursorColor: AppColors.darkBlue,
                          style: TextStyle(overflow: TextOverflow.ellipsis),
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
                DividerItem(),
                SizedBox(
                  height: screenHeight / 75,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Information',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.yellow,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 110,
                      ),
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
                            width: screenWidth / 14.3,
                          ),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              color: AppColors.mediumBlue,
                              child: Center(
                                child: Text(
                                  '${creator_name}',
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
                      SizedBox(
                        height: screenHeight / 75,
                      ),
                      Row(
                        children: [
                          Text(
                            'Last Edit',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.darkBlue,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth / 52,
                          ),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              color: AppColors.mediumBlue,
                              child: TextFormField(
                                controller: editor_name,
                                cursorColor: AppColors.darkBlue,
                                decoration: InputDecoration(
                                  isDense: true,
                                  filled: true,
                                  fillColor: AppColors.mediumBlue,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight / 75,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Editing',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.darkBlue,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.darkBlue,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth / 18,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                datePicker(context);
                              },
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: showDate
                                      ? Text(
                                          DateFormat('yyyy-MM-dd')
                                              .format(selectedDate),
                                          style: TextStyle(
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        )
                                      : Text(
                                          'Enter Date',
                                          style: TextStyle(
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ],
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