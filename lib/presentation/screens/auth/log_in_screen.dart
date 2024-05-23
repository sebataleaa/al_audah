import 'package:al_audah/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatefulWidget{

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  var user_name = TextEditingController();
  var password = TextEditingController();
  bool passwordVisible = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: screenHeight,
                  decoration: BoxDecoration(
                    color: AppColors.pureWhite,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(300.r),
                      bottomLeft: Radius.circular(300.r),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: screenHeight/25,
                        // ),
                        Center(
                          child: Image(
                            image:AssetImage('assets/images/Logo.png'),
                            width: 150.w,
                            height: 150.h,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight/30,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'LO',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Bauhaus',
                                  color: AppColors.darkBlue,
                                ),
                              ),
                              TextSpan(
                                text: 'G I',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Bauhaus',
                                  color: AppColors.yellow,
                                ),
                              ),
                              TextSpan(
                                text: 'N',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Bauhaus',
                                  color: AppColors.darkBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Log in to your account',
                          style: TextStyle(
                            color: AppColors.pureBlack,
                            fontFamily: 'bahnschrift',
                            fontSize: 18.sp,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight/15,
                        ),
                        TextFormField(
                          controller: user_name,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.r),
                                bottomLeft: Radius.circular(40.r),
                              ),
                            ),
                            labelText: 'User Name',
                            labelStyle: TextStyle(
                              color: AppColors.darkBlue,
                              // fontSize: 14.0,
                              fontFamily: 'Bahnschrift',
                            ),
                            hintText: 'enter your name',
                            hintStyle: TextStyle(
                              color: AppColors.yellow,
                              //fontSize: 13.0,
                              fontFamily: 'Bahnschrift',
                            ),
                            prefixIcon: Icon(
                              Icons.person_2_outlined,
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'this field must not be empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: screenHeight/30,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.r),
                                bottomLeft: Radius.circular(40.r),
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: AppColors.darkBlue,
                              // fontSize: 14.0,
                              fontFamily: 'Bahnschrift',
                            ),
                            hintText: 'enter password',
                            hintStyle: TextStyle(
                              color: AppColors.yellow,
                              // fontSize: 13.0,
                              fontFamily: 'Bahnschrift',
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'this field must not be empty';
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              'forget password ?',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight/20,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FloatingActionButton.extended(
                            onPressed: (){
                              if (formKey.currentState!.validate()){
                                print('sddff');
                              }
                            },
                            label: Text(
                              'Log In',
                              style: TextStyle(
                                color: AppColors.mediumBlue,
                                fontFamily: 'Bauhaus',
                                fontSize: 18.sp,
                              ),
                            ),
                            icon: Icon(
                              Icons.login,
                              color: AppColors.mediumBlue,
                            ),
                            backgroundColor: AppColors.darkBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.r),
                                bottomLeft: Radius.circular(40.r),
                              ),
                            ),
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