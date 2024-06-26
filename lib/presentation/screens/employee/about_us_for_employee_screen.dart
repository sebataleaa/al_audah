import 'package:al_audah/presentation/widget/about_us_branch_info.dart';
import 'package:al_audah/presentation/widget/about_us_company_info.dart';
import 'package:al_audah/presentation/widget/about_us_who_are_we.dart';
import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widget/divider_item.dart';
import '../../widget/space_item.dart';

class AboutUsForEmployeeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AboutUsWhoAreWe(),
        DividerSpaceItem(),
        AboutUsCompanyInfo(),
        DividerSpaceItem(),
        AboutUsBranchInfo(),
        SpaceItem(),
      ],
    );
  }

}