
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';

import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../constants/app_colors.dart';
import '../../widget/archived_costs_in_order_details_admin.dart';
import '../../widget/archived_package_info_in_order_details_admin.dart';
import '../../widget/archived_sender_recipient_notes_in_order_details_for_admin.dart';
import '../../widget/archived_source_dest_in_order_details_for_admin.dart';
import '../../widget/divider_item.dart';
import '../../widget/order_details_text.dart';

class ArchivedOrderDetailsForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: OrderDetailsText(),
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
      body: ListView(
        children: [
          SpaceItem(),
          ArchivedSourceDestInOrderDetailsForAdmin(),
          DividerBetweenListElements(),
          ArchivedSenderRecipientNotesInOrderDetailsForAdmin(),
          DividerBetweenListElements(),
          ArchivedPackageInfoInOrderDetailsAdmin(),
          DividerBetweenListElements(),
          ArchivedCostsInOrderDetailsAdmin(),
        ],
      ),
    );
  }

}