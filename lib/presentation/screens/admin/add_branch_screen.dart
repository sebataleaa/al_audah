import 'package:al_audah/presentation/widget/add_branch_information.dart';
import 'package:al_audah/presentation/widget/add_manager_add_warehouse_buttons.dart';
import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
import 'package:al_audah/presentation/widget/enter_branch_goods.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/add_branch_text.dart';
import '../../widget/divider_item.dart';

class AddBranchScreen extends StatelessWidget{

  String good = 'Table';
  String wieght = '100 kg';
  double price = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AddBranchText(),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: (){},
              child: Text(
                'Add',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bauhaus',
                  fontSize: 17.sp,
                ),
              ),
          ),
        ],
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
      body: Column(
        children: [
          AddBranchInformation(),
          SpaceItem(),
          AddManagerAddWarehouseButtons(),
          SpaceItem(),
          DividerItem(),
          EnterBranchGoods(),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          TableHeader(),
          SpaceItem(),
          Expanded(child: buildTripsTable()),
        ],
      ),
    );
  }

  Widget TableHeader() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            'Good',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              fontSize: 17.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Wieght',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              fontSize: 17.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Price',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'bahnschrift',
              fontWeight: FontWeight.bold,
              fontSize: 17.sp,
            ),
          ),
        ),
      ],
    ),
  );

  Widget RowTableItem(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${good}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${wieght}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${price}',
              style: TextStyle(
                color: AppColors.pureBlack,
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTripsTable(){
    return ListView.separated(
      itemBuilder: (context, index) {
        return RowTableItem();
      },
      separatorBuilder: (context, index) => SpaceItem(),
      itemCount: 15,
    );
  }
}