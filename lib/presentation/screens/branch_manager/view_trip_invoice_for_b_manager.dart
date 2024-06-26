import 'package:al_audah/presentation/widget/costs_in_order_details_admin.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/sender_recipient_notes_in_order_details_for_admin.dart';
import 'package:al_audah/presentation/widget/source_dest_in_view_t_invoice_for_b_manager.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/costs_in_view_t_invoice_for_b_manager.dart';
import '../../widget/divider_item.dart';
import '../../widget/divider_space_item.dart';
import '../../widget/order_details_text.dart';
import '../../widget/package_info_in_order_details_admin.dart';
import '../../widget/package_info_in_view_t_invoice_for_b_manager.dart';
import '../../widget/sender_recipient_notes_in_view_t_invoice_for_b_manager.dart';
import '../../widget/source_dest_in_order_details_for_admin.dart';
import '../../widget/trip_invoice_text.dart';

class ViewTripInvoiceForB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripInvoiceText(),
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
          SourceDestInViewT_InvoiceForB_Manager(),
          DividerSpaceItem(),
          SenderRecipientNotesInViewT_InvoiceForB_Manager(),
          DividerSpaceItem(),
          PackageInfoInViewT_InvoiceForB_Manager(),
          DividerSpaceItem(),
          CostsInViewT_InvoiceForB_Manager(),
          SpaceItem(),
        ],
      ),
    );
  }

}