import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/screens/employee/categories_screen.dart';
import 'package:al_audah/presentation/screens/employee/employee_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/main_screen_text.dart';
import 'about_us_for_employee_screen.dart';

class EmployeeMainScreen extends StatefulWidget {
  @override
  State<EmployeeMainScreen> createState() => _EmployeeMainScreenState();
}

class _EmployeeMainScreenState extends State<EmployeeMainScreen> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    AboutUsForEmployeeScreen(),
    EmployeeProfileScreen(),
    CategoriesScreen(),
  ];

  _showOption (BuildContext context){
    return showDialog(
      context: context,
      builder: (context) =>AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading : Icon(Icons.settings_outlined,color: AppColors.darkBlue,),
                title: Text(
                  'Settings',
                ),
                onTap:() {},
              ),
              ListTile(
                leading : Icon(Icons.logout_outlined,color:AppColors.darkBlue,),
                title: Text(
                  'Log Out',
                ),
                onTap:() {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: MainScreenText(),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: AppColors.darkBlue,
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showOption(context);
            },
            icon: Icon(
              Icons.more_vert,
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100.r),
              bottomRight: Radius.circular(100.r),
            ),
            child: Container(
              height: screenHeight/1.5,
              //width: screenWidth/8,
              child: RotatedBox(
                quarterTurns: 3,
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
                        Icons.details_outlined,
                        color: AppColors.pureWhite,
                      ),
                      activeIcon: Icon(
                        Icons.details_outlined,
                        color: AppColors.yellow,
                      ),
                      label: 'About Us',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outlined,
                        color: AppColors.pureWhite,
                      ),
                      activeIcon: Icon(
                        Icons.person_outlined,
                        color: AppColors.yellow,
                      ),
                      label: 'Profile',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined,
                        color: AppColors.pureWhite,
                      ),
                      label: 'Home',
                      activeIcon: Icon(
                        Icons.home_outlined,
                        color: AppColors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      ),
    );
  }
}


