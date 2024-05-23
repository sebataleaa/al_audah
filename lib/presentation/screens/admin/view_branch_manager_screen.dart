
import 'package:al_audah/presentation/widget/b_manager_information_text.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/edit_delete_b_manager_buttons.dart';

import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/view_b_manager_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/view_b_manager_powers_button_for_admin.dart';


class ViewBranchManagerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: B_ManagerInformationText(),
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
          SizedBox(
            height: screenHeight / 75,
          ),
          EditDeleteeB_ManagerButtons(),
          DividerBetweenListElements(),
          Expanded(child: ViewB_ManagerInformation()),
          ViewB_ManagerPowersButtonForAdmin(),
          SpaceItem(),
        ],
      ),
    );
  }

}