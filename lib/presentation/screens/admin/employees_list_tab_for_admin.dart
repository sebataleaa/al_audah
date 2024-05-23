import 'package:al_audah/presentation/widget/build_employees_list_for_admin.dart';
import 'package:flutter/cupertino.dart';

import '../../widget/divider_item.dart';
import '../../widget/employee_search_button.dart';
import '../../widget/space_item.dart';

class EmployeesListTabForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        SearchEmployeeButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
            child: BuildEmployeesListForAdmin(),
        ),
      ],
    );
  }

}