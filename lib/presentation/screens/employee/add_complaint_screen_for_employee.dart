import 'package:al_audah/presentation/widget/complaint_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';

class AddComplaintScreenForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: ComplaintText(),
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
          Expanded(child: Container()),
          TextFormField(
            //controller: commentController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: AppColors.darkBlue,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: AppColors.darkBlue,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
              hintText: 'write a complaint',
              suffixIcon: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.send,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            onChanged: (value) {
              print(value);
            },
            onFieldSubmitted: (value) {
              print(value);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'this field can not be empty';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

}