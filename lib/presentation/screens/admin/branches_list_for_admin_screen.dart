 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/add_branch_button_widget.dart';
import '../../widget/branches_list_intro_decoration.dart';
import '../../widget/build_branches_list_for_admin.dart';

class BranchesListForAdminScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: BranchesListIntroDecoration(),
                ),
                Expanded(
                  child: buildBranchesListForAdmin(),
                ),
                AddBranchButtonWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }

}