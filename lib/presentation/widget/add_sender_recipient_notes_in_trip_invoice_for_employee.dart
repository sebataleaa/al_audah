import 'package:al_audah/presentation/screens/employee/add_customer_screen.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AddSenderRecipientNotesInTripInvoiceForEmployee extends StatelessWidget{

  var sender = TextEditingController();
  var recipient = TextEditingController();
  var notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Sender',
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
                child: TextFormField(
                  controller: sender,
                  cursorColor: AppColors.darkBlue,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
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
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>AddCustomerScreen()));
                    },
                    icon: Icon(
                      Icons.add,
                      color: AppColors.mediumBlue,
                    ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Recipient',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 22,
              ),
              Expanded(
                child: TextFormField(
                  controller: recipient,
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
                'Notes',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 8.9,
              ),
              Expanded(
                child: TextFormField(
                  controller: notes,
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
        ],
      ),
    );
  }

}