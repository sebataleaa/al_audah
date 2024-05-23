import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/branches_list_intro_decoration.dart';
import '../../widget/build_branches_list_for_employee.dart';

class BranchesListForEmployee extends StatefulWidget {
  @override
  State<BranchesListForEmployee> createState() => _BranchesListForEmployeeState();
}

class _BranchesListForEmployeeState extends State<BranchesListForEmployee> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Stack(
          children: [
            Container(
              height: screenHeight,
              decoration: BoxDecoration(
                color: AppColors.pureWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(400.r),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BranchesListIntroDecoration(),
                  Expanded(
                      child: buildBranchesListForEmployee(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
