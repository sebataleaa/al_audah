import 'package:al_audah/presentation/widget/edit_delete_powers_buttons_for_admin.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/view_trucks_powers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/view_employees_powers.dart';
import '../../widget/view_powers_text.dart';

class ViewPowersAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: ViewPowersText(),
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ViewTrucksPowers(),
                SpaceItem(),
                SpaceItem(),
                ViewEmployeesPowers(),
                SpaceItem(),
              ],
            ),
          ),
          EditDeletePowersButtonsForAdmin(),
        ],
      ),
    );
  }
}
