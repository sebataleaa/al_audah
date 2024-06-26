import 'package:al_audah/presentation/screens/admin/branches_list_for_admin_screen.dart';
import 'package:al_audah/presentation/screens/admin/customers_list_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/employees_list_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/trips_list_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/buttons_row_admin_main_screen.dart';
import '../../widget/search_field_in_admin_main_screen.dart';

class AdminCategoriesScreen extends StatelessWidget {

  String branch_name_for_trucks = 'Damascus';
  String branch_name_for_employee = 'Damascus';

  Widget BranchItemForTrucks() => GestureDetector(
    onTap: (){
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => TrucksListForAdmin()));
    },
    child: Container(
          height: 40.h,
          margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
            ),
          ),
          child: Center(
            child: Text(
              '${branch_name_for_trucks}',
              style: TextStyle(
                color: AppColors.pureWhite,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
  );

  Widget BuildBranchesListForTruck() => Column(
    children: [
      Image(
        image: AssetImage('assets/images/Location.png'),
        width: 100.w,
        height: 100.h,
      ),
      Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BranchItemForTrucks();
          },
          itemCount: 15,
        ),
      ),
    ],
  );

  void bottomSheetForBranchesList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildBranchesListForTruck();
      },
      backgroundColor: AppColors.pureWhite,
    );
  }

  Widget BranchItemForEmployee() => GestureDetector(
    onTap: (){
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => EmployeesListForAdmin()()));
    },
    child: Container(
      height: 40.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.mediumBlue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
      ),
      child: Center(
        child: Text(
          '${branch_name_for_employee}',
          style: TextStyle(
            color: AppColors.pureBlack,
            fontFamily: 'bahnschrift',
            fontSize: 16.sp,
          ),
        ),
      ),
    ),
  );

  Widget BuildBranchesListForEmployees() => Stack(
    alignment: Alignment.center,
    children: [
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(0.2),
          BlendMode.dstIn,
        ),
        child: Image.asset(
          'assets/images/Logo2.png',
          fit: BoxFit.contain,
        ),
      ),
      ListView.builder(
        itemBuilder: (context, index) {
          return BranchItemForEmployee();
        },
        itemCount: 15,
      ),
    ],
  );

  void bottomSheetForEmployeessList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildBranchesListForEmployees();
      },
      backgroundColor: AppColors.pureWhite,
        showDragHandle : true,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ButtonsRowAdminMainScreen(),
            SizedBox(
              height: screenHeight / 30,
            ),
            SearchFieldInAdminMainScreen(),
            SizedBox(
              height: screenHeight / 30,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TripsListForAdmin()));
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
                            bottomSheetForEmployeessList(context);
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
                          bottomSheetForBranchesList(context);
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CustomersListForAdmin()));
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BranchesListForAdminScreen()));
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
