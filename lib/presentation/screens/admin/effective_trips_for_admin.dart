import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/widget/build_effective_trips_list_for_admin.dart';
import 'package:al_audah/presentation/widget/divider_item.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/effective_trip_search_button_admin.dart';

class EffectiveTripsForAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        EffevtiveTripSearchButtonAdmin(),
        SpaceItem(),
        DividerItem(),
        Expanded(
          child: BuildEffectiveTripsListForAdmin(),
        ),
      ],
    );
  }
}
