import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/widget/build_customers_list_for_admin.dart';
import 'package:al_audah/presentation/widget/customers_list_text_intro.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/customers_list_text.dart';
import '../../widget/divider_item.dart';
import '../../widget/search_in_customer_list_for_admin.dart';

class CustomersListForAdmin extends StatefulWidget{

  @override
  State<CustomersListForAdmin> createState() => _CustomersListForAdminState();
}

class _CustomersListForAdminState extends State<CustomersListForAdmin> {

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
          SearchInCustomersListForAdmin(),
          DividerBetweenListElements(),
          Expanded(
            child: BuildCustomersListForAdmin(),
          ),
        ],
      ),
    );
  }
}