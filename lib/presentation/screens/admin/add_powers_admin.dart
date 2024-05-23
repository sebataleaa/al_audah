
import 'package:al_audah/presentation/widget/add_employees_powers.dart';
import 'package:al_audah/presentation/widget/add_powers_text.dart';
import 'package:al_audah/presentation/widget/add_trucks_powers.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';

import '../../widget/divider_item.dart';

class AddPowersAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddPowersText(),
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
          SpaceItem(),
          SpaceItem(),
          SpaceItem(),
          AddTrucksPowers(),
          SpaceItem(),
          SpaceItem(),
          AddEmployeesPowers(),
          SpaceItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
        child: Text(
          'Save',
          style: TextStyle(
            color: AppColors.mediumBlue,
            fontSize: 17.sp,
            fontFamily: 'Bauhaus',
          ),
        ),
      ),
    );
  }

}