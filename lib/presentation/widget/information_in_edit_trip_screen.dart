import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class InformationInEditTripScreen extends StatefulWidget{

  @override
  State<InformationInEditTripScreen> createState() => _InformationInEditTripScreenState();
}

class _InformationInEditTripScreenState extends State<InformationInEditTripScreen> {

  String manifest = 'DM-1-7017';
  String trip_date = "17/05/2023";
  String status = "Temporary";
  String destination = 'Lattakia';
  String editedManifest = '';
  String editedStatus = '';
  String editedDate = '';
  String editedDest = '';
  bool showDate = false;
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
        editedDate = DateFormat('yyyy-MM-dd').format(selectedDate) ;
        showDate = true;
      });
    });
  }

  void _editManifest() {
    TextEditingController manifest_controller = TextEditingController(text: manifest);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Manifest',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: manifest_controller ,
            onChanged: (value) {
              editedManifest = value;
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
                  manifest = editedManifest;
                });
                manifest_controller.text = manifest;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editStatus() {
    TextEditingController status_controller = TextEditingController(text: status);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Status',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: status_controller ,
            onChanged: (value) {
              editedStatus = value;
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
                  status = editedStatus;
                });
                status_controller.text = status;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editDest() {
    TextEditingController destination_controller = TextEditingController(text: destination);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Destination',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: destination_controller ,
            onChanged: (value) {
              editedDest= value;
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
                  destination = editedDest;
                });
                destination_controller.text = destination;
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
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Information',
            style: TextStyle(
              color: AppColors.yellow,
              fontSize: 17.sp,
              fontFamily: 'bahnschrift',
            ),
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Manifest',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 11.3,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.darkBlue,
                  child: Center(
                    child: Text(
                      '${manifest}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth / 30,
              ),
              CircleAvatar(
                backgroundColor: AppColors.yellow,
                child: IconButton(
                  onPressed: (){
                    _editManifest();
                  },
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Status',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 7.7,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.yellow,
                  child: Center(
                    child: Text(
                      '${status}',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                        color: AppColors.pureBlack,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth / 30,
              ),
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                child: IconButton(
                  onPressed: (){
                    _editStatus();
                  },
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Date',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 5.9,
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
                        DateFormat('yyyy-MM-dd').format(selectedDate),
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      )
                          : Text(
                        '${trip_date}',
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
                'Destination',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 30.3,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    _editDest();
                  },
                  child: Container(
                    height: 40.h,
                    color: AppColors.mediumBlue,
                    child: Center(
                      child: Text(
                        '${destination}',
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
    );
  }
}