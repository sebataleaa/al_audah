import 'package:al_audah/presentation/widget/build_search_resultes_list_for_admin.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/search_resulte_text.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';

class SearchResulteForAdmin extends StatelessWidget{


  double res_num = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: SearchResulteText(),
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.dstIn,
            ),
            child: Image.asset(
              'assets/images/Logo2.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SpaceItem(),
              Text(
                'Resulte : ${res_num}',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.yellow,
                  fontSize: 16.sp,
                ),
              ),
              DividerBetweenListElements(),
              Expanded(
                  child: BuildSearchResultesListForAdmin(),
              ),
            ],
          ),
        ],
      ),
    );
  }

}