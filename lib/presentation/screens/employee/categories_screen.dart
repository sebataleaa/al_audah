import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';

class CategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: (){},
                    shape: CircleBorder(
                      side: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                    ),
                    backgroundColor: AppColors.pureWhite,
                    elevation: 0.0,
                    child: Icon(
                      Icons.notifications,
                      color: AppColors.darkBlue,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    shape: CircleBorder(
                      side: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                    ),
                    backgroundColor: AppColors.pureWhite,
                    elevation: 0.0,
                    child: Icon(
                      Icons.report_problem,
                      color: AppColors.darkBlue,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    shape: CircleBorder(
                      side: BorderSide(
                        color: AppColors.darkBlue,
                      ),
                    ),
                    backgroundColor: AppColors.pureWhite,
                    elevation: 0.0,
                    child: Text(
                      'EN',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight/30,
            ),
            Container(
              height: 40.h,
              child: TextFormField(
                cursorColor: AppColors.darkBlue,
                decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.darkBlue,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.darkBlue,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: AppColors.darkBlue,
                    // fontSize: 14.0,
                    fontFamily: 'Bahnschrift',
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight/30,
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
            // SizedBox(
            //   height: screenHeight/40,
            // ),
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