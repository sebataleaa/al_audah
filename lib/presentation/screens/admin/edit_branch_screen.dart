import 'package:al_audah/presentation/widget/branch_information_text.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/edit_branch_information.dart';
import 'package:al_audah/presentation/widget/edit_branch_user_information.dart';
import 'package:al_audah/presentation/widget/edit_screens_text_intro.dart';
import 'package:al_audah/presentation/widget/notes_in_edit_branch.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/prices_list_button_for_admin.dart';

class EditBranchScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: BranchInformationText(),
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
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SpaceItem(),
          EditScreensTextIntro(),
          DividerBetweenListElements(),
          EditBranchInformation(),
          DividerBetweenListElements(),
          EditBranchUserInformation(),
          DividerBetweenListElements(),
          NotesInEditBranch(),
          DividerBetweenListElements(),
          PricesListButtonForAdmin(),
          SpaceItem(),
        ],
      ),
    );
  }

}