import 'package:al_audah/presentation/widget/add_invoice_button.dart';
import 'package:al_audah/presentation/widget/trip_invoice_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/add_costs_in_trip_invoice_employee.dart';
import '../../widget/divider_between_list_elements.dart';
import '../../widget/divider_item.dart';
import '../../widget/add_package_info_in_trip_invoice_employee.dart';
import '../../widget/add_sender_recipient_notes_in_trip_invoice_for_employee.dart';
import '../../widget/add_source_dest_in_trip_invoice_for_employee.dart';
import '../../widget/space_item.dart';

class AddTripInvoice extends StatelessWidget{
  var source= TextEditingController();
  var destination = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpaceItem(),
            AddSourceDestInTripInvoiceForEmployee(),
            DividerBetweenListElements(),
            AddSenderRecipientNotesInTripInvoiceForEmployee(),
            DividerBetweenListElements(),
            AddPackageInfoInTripInvoiceEmployee(),
            DividerBetweenListElements(),
            AddCostsInTripInvoiceEmployee(),
            SpaceItem(),
            AddInvoiceButton(),
          ],
        ),
      ),
    );
  }

}