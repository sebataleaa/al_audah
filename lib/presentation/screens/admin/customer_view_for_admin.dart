import 'package:al_audah/presentation/widget/customer_info__for_admin.dart';
import 'package:al_audah/presentation/widget/delete_customer_button_widget.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/edit_customer_button_widget..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/customer_information_text.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';

class CustomersViewForAdmin extends StatefulWidget {
  @override
  State<CustomersViewForAdmin> createState() => _CustomersViewForAdminState();
}

class _CustomersViewForAdminState extends State<CustomersViewForAdmin> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: CustomerInformationText(),
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
          SizedBox(
            height: screenHeight / 75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoImageWidget(),
                Text(
                  'Our Customer Information ',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: 'bahnschrift',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                LogoImageWidget(),
              ],
            ),
          ),
          DividerBetweenListElements(),
          CustomerInfoForAdmin(),
        ],
      ),
    );
  }
}
