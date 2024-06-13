import 'package:al_audah/presentation/widget/costs_in_view_t_invoice_for_emp.dart';
import 'package:al_audah/presentation/widget/delete_print_edit_buttons_in_view_t_invoice.dart';
import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/package_info_in_view_t_invoice_for_emp.dart';
import 'package:al_audah/presentation/widget/sender_recipient_notes_in_view_t_invoice_for_emp.dart';
import 'package:al_audah/presentation/widget/source_dest_in_view_t_invoice_for_emp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';
import '../../widget/trip_invoice_text.dart';

class ViewTripInvoiceForEmployee extends StatelessWidget{
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
          DeletePrintEditButtonsInViewTripInvoice(),
          DividerSpaceItem(),
          SourceDestInViewT_InvoiceForEmp(),
          DividerSpaceItem(),
          SenderRecipientNotesInViewT_InvoiceForEmp(),
          DividerSpaceItem(),
          PackageInfoInViewT_InvoiceForEmp(),
          DividerSpaceItem(),
          CostsInViewT_InvoiceForEmp(),
          SpaceItem(),
        ],
      ),
    );
  }

}