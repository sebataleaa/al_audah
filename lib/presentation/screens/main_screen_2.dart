import 'package:al_audah/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Ma',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: 'ScriptMT',
                  color: Color.fromRGBO(222, 164, 22, 1),
                ),
              ),
              TextSpan(
                text: 'in ',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: 'ScriptMT',
                  color: Color.fromRGBO(14, 27, 57, 1),
                ),
              ),
              TextSpan(
                text: 'Sc',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: 'ScriptMT',
                  color: Color.fromRGBO(14, 27, 57, 1),
                ),
              ),
              TextSpan(
                text: 'reen',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: 'ScriptMT',
                  color: Color.fromRGBO(222, 164, 22, 1),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: Color.fromRGBO(14, 27, 57, 1),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Color.fromRGBO(14, 27, 57, 1),
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Color.fromRGBO(14, 27, 57, 1),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
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
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  CircleAvatar(
                    //foregroundColor: Color.fromRGBO(14, 27, 57, 1),
                    //backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notifications,
                      color: Color.fromRGBO(14, 27, 57, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  CircleAvatar(
                    //foregroundColor: Color.fromRGBO(14, 27, 57, 1),
                    //backgroundColor: Colors.white,
                    child: Icon(
                      Icons.report_problem,
                      color: Color.fromRGBO(14, 27, 57, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  CircleAvatar(
                    //foregroundColor: Color.fromRGBO(14, 27, 57, 1),
                    backgroundColor: AppColors.pureWhite,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'en',
                        style: TextStyle(
                          color: Color.fromRGBO(14, 27, 57, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Tell us',
              style: TextStyle(
                color: Color.fromRGBO(14, 27, 57, 1),
                fontWeight: FontWeight.bold,
                fontFamily: 'Bauhaus',
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'where do you want to go?',
              style: TextStyle(
                color: Color.fromRGBO(14, 27, 57, 1),
                fontFamily: 'bahnschrift',
                fontSize: 18.sp,
                 //fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight / 1.5,
                  width: screenWidth / 7,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      // width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100.r),
                          bottomLeft: Radius.circular(100.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                color: AppColors.pureWhite,
                               // fontFamily: 'Bauhaus',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                color: AppColors.pureWhite,
                               // fontFamily: 'Bauhaus',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              'Home',
                              style: TextStyle(
                                color: AppColors.pureWhite,
                               // fontFamily: 'Bauhaus',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 200,
        //color: Colors.lightBlue,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            Positioned(
              top: -50,
              left: 40,
              child: Image(
                image: AssetImage(
                  'assets/images/Trucks-List.png',
                ),
                width: 130.0,
                height: 130.0,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trucks List',
                    style: TextStyle(
                      color: Color.fromRGBO(222, 164, 22, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_right,
                      color: Color.fromRGBO(14, 27, 57, 1),
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