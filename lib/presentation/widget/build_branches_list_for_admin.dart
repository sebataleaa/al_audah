import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';

import 'branch_item_for_admin.dart';

class buildBranchesListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return BranchItemForAdmin();
        },
        separatorBuilder: (context, index) => SpaceItem(),
        itemCount: 15,
      ),
    );
  }

}