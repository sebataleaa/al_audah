
import 'package:al_audah/presentation/screens/customer/customer_notification.dart';
import 'package:al_audah/presentation/screens/customer/view_orders_for_customer.dart';
import 'package:al_audah/presentation/widget/logo_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/main_screen_text.dart';

class CustomerMainScreen extends StatefulWidget{

  @override
  State<CustomerMainScreen> createState() => _CustomerMainScreenState();
}

class _CustomerMainScreenState extends State<CustomerMainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ViewOrdersForCustomer(),
    CustomerNotification(),
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
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(37.r),
            topLeft: Radius.circular(37.r)
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.darkBlue,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
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
                Icons.list_alt,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.list_alt,
                color: AppColors.yellow,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.notifications_none_outlined,
                color: AppColors.yellow,
              ),
              label: 'Notifications',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.pureWhite,
        shape: CircleBorder(),
        child: LogoImageWidget(),
      ),
    );
  }
}