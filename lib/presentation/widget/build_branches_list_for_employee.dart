import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';

import 'branch_item_for_employee.dart';

class buildBranchesListForEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return BranchItemForEmployee();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }

}