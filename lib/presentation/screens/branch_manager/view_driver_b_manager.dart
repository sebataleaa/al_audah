import 'package:al_audah/presentation/screens/branch_manager/driver_information_tab_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/driver_trips_tab_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';

import '../../widget/divider_item.dart';
import '../../widget/driver_information_text.dart';


class ViewDriverB_Manager extends StatefulWidget {
  @override
  State<ViewDriverB_Manager> createState() => _ViewDriverB_ManagerState();
}

class _ViewDriverB_ManagerState extends State<ViewDriverB_Manager> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DriverInformationTabB_Manager(),
    DriverTripsTabB_Manager(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: DriverInformationText(),
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
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(37.r),
            topLeft: Radius.circular(37.r)
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.darkBlue,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: AppColors.yellow,
          unselectedItemColor: AppColors.pureWhite,
          //unselectedLabelStyle: TextStyle(color: Colors.white),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info_outline,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.info_outline,
                color: AppColors.yellow,
              ),
              label: 'Information',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.drive_eta_outlined,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.drive_eta_outlined,
                color: AppColors.yellow,
              ),
              label: 'Trips',
            ),
          ],
        ),
      ),
    );
  }
}
