import 'package:al_audah/presentation/screens/branch_manager/view_employees_powers_button_b_manager.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/edit_delete_evaluate_emp_butons.dart';
import 'package:al_audah/presentation/widget/employee_information_text.dart';
import 'package:al_audah/presentation/widget/view_employee_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';


class ViewEmployeeB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: EmployeeInformationText(),
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
          EditDeleteEvaluateEmpButtons(),
          DividerBetweenListElements(),
          ViewEmployeesPowersButtonB_Manager(),
          DividerBetweenListElements(),
          Expanded(child: ViewEmployeeInformation()),
        ],
      ),
    );
  }

}