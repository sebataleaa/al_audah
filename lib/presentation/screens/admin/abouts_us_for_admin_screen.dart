import 'package:al_audah/presentation/widget/about_us_company_info.dart';
import 'package:al_audah/presentation/widget/trips_list_text.dart';
import 'package:al_audah/presentation/widget/about_us_who_are_we.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';
import '../../widget/space_item.dart';

class AboutUsForAdminScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AboutUsWhoAreWe(),
        ),
        SpaceItem(),
        DividerItem(),
        SpaceItem(),
        Expanded(
          child: AboutUsCompanyInfo(),
        ),
        Expanded(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.dstIn,
            ),
            child: Image.asset(
              'assets/images/Logo2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }

}