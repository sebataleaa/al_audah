import 'package:al_audah/presentation/screens/branch_manager/branches_list_for_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/customers_list_for_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/employees_list_for%20_b_manger.dart';
import 'package:al_audah/presentation/screens/branch_manager/trips_list_for_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/trucks_list_for_b_manager.dart';
import 'package:al_audah/presentation/widget/buttons_row_b_manager_main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/search_field_in_admin_main_screen.dart';


class B_ManagerCategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ButtonsRowB_ManagerMainScreen(),
            // SizedBox(
            //   height: screenHeight/30,
            // ),
            // SearchFieldInAdminMainScreen(),
            SizedBox(
              height: screenHeight/20,
            ),
            Text(
              'Tell us',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bauhaus',
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'where do you want to go?',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontFamily: 'bahnschrift',
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Trips-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Trips List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>TripsListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Employees-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Employees List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>EmployeesListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Trucks-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Trucks List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>TrucksListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Customers-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Customers List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>CustomersListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Company-Branches.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Company Branches',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>BranchesListForB_Manager()));
                          },
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.r,
              // color: Colors.lightBlue,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                  Align(
                    // alignment: AlignmentDirectional.topStart,
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: AssetImage(
                        'assets/images/Reports-List.png',
                      ),
                      width: 166.w,
                      height: 166.h,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Reports List',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.directions,
                            color: AppColors.darkBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}