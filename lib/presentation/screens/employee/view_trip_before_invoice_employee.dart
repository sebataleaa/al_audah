import 'package:al_audah/presentation/widget/edit_delete_invoice_buttons_in_view_trip.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/view_trip_information_before_invoice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/trip_record_text.dart';

class ViewTripBeforInvoiceEmployee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
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
      body: Column(
        children: [
          SpaceItem(),
          EditDeleteInvoiceButtonsInViewTrip(),
          SpaceItem(),
          DividerItem(),
          Expanded(
              child: ViewTripInformationBeforeInvoice(),
          ),
        ],
      ),
    );
  }

}