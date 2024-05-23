import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/search_in_trucks_list_for_employee.dart';
import 'package:al_audah/presentation/widget/trucks_list_text.dart';
import 'package:al_audah/presentation/widget/trucks_list_text_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/build_trucks_list_for_employee.dart';
import '../../widget/divider_item.dart';

class TrucksListForEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TrucksListText(),
        ),
        leading: IconButton(
          onPressed: () {},
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
            height: screenHeight / 75,
          ),
          TrucksListTextIntro(),
          DividerBetweenListElements(),
          SearchInTrucksListForEmployee(),
          SizedBox(
            height: screenHeight/75,
          ),
          DividerItem(),
          Expanded(
              child: BuildTrucksListForEmployee(),
          ),
        ],
      ),
    );
  }
}
