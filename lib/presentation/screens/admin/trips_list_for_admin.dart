import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/widget/trips_list_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archived_trips_for_admin.dart';
import 'effective_trips_for_admin.dart';

class TripsListForAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlue,
          title: Align(
            alignment: Alignment.centerRight,
            child: TripsListText(),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: AppColors.yellow,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.unarchive,), text: "Effective",),
              Tab(icon: Icon(Icons.archive, ), text: "Archived"),
            ],
            unselectedLabelColor: AppColors.mediumBlue,
          ),
        ),
        body: TabBarView(
          children: [
            EffectiveTripsForAdmin(),
            ArchivedTripsForAdmin(),
          ],
        ),
      ),
    );
  }
}
