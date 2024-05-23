import 'package:al_audah/presentation/screens/branch_manager/archived_employees_list_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/employees_list_tab_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/employees_list_text.dart';
import 'drivers_list_for_b_manager.dart';

class EmployeesListForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          title: Align(
            alignment: Alignment.centerRight,
            child: EmployeesListText(),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              color: AppColors.yellow,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person,), text: "Employees",),
              Tab(icon: Icon(Icons.drive_eta,), text: "Drivers",),
              Tab(icon: Icon(Icons.archive, ), text: "Archived"),
            ],
            unselectedLabelColor: AppColors.mediumBlue,
          ),
        ),
        body: TabBarView(
          children: [
            EmployeesListTabB_Manager(),
            DriversListForB_Manager(),
            ArchivedEmployeesListB_Manager(),
          ],
        ),
      ),
    );
  }

}