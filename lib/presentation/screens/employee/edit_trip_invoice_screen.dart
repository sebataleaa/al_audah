import 'package:al_audah/presentation/widget/delete_print_save_buttons_in_edit_t_invoice.dart';
import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/edit_costs_in_t_invoice_screen.dart';
import 'package:al_audah/presentation/widget/edit_package_info_in_t_invoice_screen.dart';
import 'package:al_audah/presentation/widget/edit_source_dest_in_t_invoice_screen.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/edit_sender_recipient_notes_in_t_invoice.dart';
import '../../widget/trip_invoice_text.dart';

class EditTripInvoiceScreen extends StatelessWidget{
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
          DeletePrintSaveButtonsInEditT_Invoice(),
          DividerSpaceItem(),
          EditSourceDestInT_InvoiceScreen(),
          DividerSpaceItem(),
          EditSenderRecipientNotesInT_InvoiceScreen(),
          DividerSpaceItem(),
          EditPackageInfoInT_InvoiceScreen(),
          DividerSpaceItem(),
          EditCostsInT_InvoiceScreen(),
          SpaceItem(),
        ],
      ),
    );
  }

}