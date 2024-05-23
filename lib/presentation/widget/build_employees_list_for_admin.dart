
import 'package:al_audah/presentation/widget/employee_item_for_admin.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class BuildEmployeesListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return EmployeeItemForAdmin();
      },
      separatorBuilder: (context, index) => DividerItem(),
      itemCount: 15,
    );
  }

}