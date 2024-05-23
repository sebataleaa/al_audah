import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/screens/admin/drivers_list_for_admin.dart';
import 'package:al_audah/presentation/widget/employees_list_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archived_employees_list_for_admin.dart';
import 'employees_list_tab_for_admin.dart';

class EmployeesListForAdmin extends StatelessWidget{
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
            onPressed: () {
              Navigator.pop(context);
            },
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
            EmployeesListTabForAdmin(),
            DriversListForAdmin(),
            ArchivedEmployeeListForAdmin(),
          ],
        ),
      ),
    );
  }
}