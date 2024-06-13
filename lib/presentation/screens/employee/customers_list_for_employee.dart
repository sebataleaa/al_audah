import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/widget/add_customer_button_widget.dart';
import 'package:al_audah/presentation/widget/customers_list_text_intro.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/search_in_customers_list_for_employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/build_customers_list_for_employee.dart';
import '../../widget/customers_list_text.dart';
import '../../widget/divider_item.dart';

class CustomersListForEmployee extends StatefulWidget{

  @override
  State<CustomersListForEmployee> createState() => _CustomersListForEmployeeState();
}

class _CustomersListForEmployeeState extends State<CustomersListForEmployee> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: CustomersListText(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight/75,
          ),
          CustomersListTextIntro(),
          DividerBetweenListElements(),
          SearchInCustomersListForEmployee(),
          DividerBetweenListElements(),
          Expanded(
              child: BuildCustomersListForEmployee(),
          ),
          AddCustomerButtonWidget(),
        ],
      ),
    );
  }
}