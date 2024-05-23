
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/search_resulte_item_for_admin.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class BuildSearchResultesListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return SearchResulteItemForAdmin();
      },
      separatorBuilder: (context, index) => DividerBetweenListElements(),
      itemCount: 15,
    );
  }

}