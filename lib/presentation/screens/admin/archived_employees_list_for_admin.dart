import 'package:al_audah/presentation/widget/build_archived_employees_list_for_admin.dart';
import 'package:al_audah/presentation/widget/search_archived_employee_button.dart';
import 'package:al_audah/presentation/widget/search_driver_button.dart';
import 'package:flutter/cupertino.dart';

import '../../widget/divider_item.dart';

import '../../widget/space_item.dart';

class ArchivedEmployeeListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        SearchArchivedEmployeeButton(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildArchivedEmployeesListForAdmin(),
        ),
      ],
    );
  }

}