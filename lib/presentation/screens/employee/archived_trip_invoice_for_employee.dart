
import 'package:al_audah/presentation/widget/archived_costs_in_t_invoice_for_employee.dart';
import 'package:al_audah/presentation/widget/archived_source_dest_in_t_invoice_for_employee.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';

import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/trip_invoice_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../widget/archived_package_info_in_t_invoice_employee.dart';
import '../../widget/archived_sender_recipient_notes_in_t_invoice_for_employee.dart';
import '../../widget/divider_item.dart';

class ArchivedTripInvoiceForEmployee extends StatelessWidget{
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
          ArchivedSourceDestInT_InvoiceForEmployee(),
          DividerBetweenListElements(),
          ArchivedSenderRecipientNotesInT_InvoiceForEmployee(),
          DividerBetweenListElements(),
          ArchivedPackageInfoInT_InvoiceForEmployee(),
          DividerBetweenListElements(),
          ArchivedCostsInT_InvoiceForEmployee(),
        ],
      ),
    );
  }

}