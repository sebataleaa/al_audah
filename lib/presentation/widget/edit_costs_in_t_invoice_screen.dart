import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class EditCostsInT_InvoiceScreen extends StatefulWidget{

  @override
  State<EditCostsInT_InvoiceScreen> createState() => _EditCostsInT_InvoiceScreenState();
}

class _EditCostsInT_InvoiceScreenState extends State<EditCostsInT_InvoiceScreen> {

  String prepaid_cost = '2500';
  String collection_cost = '2500';
  String prepaid_against_shipping = '2500';
  String collection_against_shipping = '2500';
  String collection_adapter = '2500';
  String collection_discount = '2500';

  String editedPrePaidCost = '';
  String editedCollectionCost = '';
  String editedPrepaidAgainstShipping = '';
  String editedCollectionAgainstShipping = '';
  String editedCollectionAdapter = '';
  String editedCollectionDiscount = '';

  void _editPrePaidCost() {
    TextEditingController prepaid_cost_controller = TextEditingController(text: prepaid_cost);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Prepaid Cost',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: prepaid_cost_controller,
            onChanged: (value) {
              editedPrePaidCost = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  prepaid_cost = editedPrePaidCost;
                });
                prepaid_cost_controller.text = prepaid_cost;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editCollectionCost() {
    TextEditingController collection_cost_controller = TextEditingController(text: collection_cost);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Collection Cost',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: collection_cost_controller,
            onChanged: (value) {
              editedCollectionCost = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  collection_cost = editedCollectionCost;
                });
                collection_cost_controller.text = collection_cost;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPrepaidAgainstShipping() {
    TextEditingController prepaid_against_shipping_controller = TextEditingController(text: prepaid_against_shipping);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Prepaid Against Shipping',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: prepaid_against_shipping_controller,
            onChanged: (value) {
              editedPrepaidAgainstShipping = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  prepaid_against_shipping = editedPrepaidAgainstShipping;
                });
                prepaid_against_shipping_controller.text = prepaid_against_shipping;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editCollectionAgainstShipping() {
    TextEditingController collection_against_shipping_controller = TextEditingController(text: collection_against_shipping);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Collection Against Shipping',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: collection_against_shipping_controller,
            onChanged: (value) {
              editedCollectionAgainstShipping = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  collection_against_shipping = editedCollectionAgainstShipping;
                });
                collection_against_shipping_controller.text = collection_against_shipping;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editCollectionAdapter() {
    TextEditingController collection_adapter_controller = TextEditingController(text: collection_adapter);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Collection Adapter',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: collection_adapter_controller,
            onChanged: (value) {
              editedCollectionAdapter = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  collection_adapter = editedCollectionAdapter;
                });
                collection_adapter_controller.text = collection_adapter;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editCollectionDiscount() {
    TextEditingController collection_discount_controller = TextEditingController(text: collection_discount);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Collection Discount',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: collection_discount_controller,
            onChanged: (value) {
              editedCollectionDiscount = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  collection_discount = editedCollectionDiscount;
                });
                collection_discount_controller.text = collection_discount;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Costs',
            style: TextStyle(
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
              fontSize: 17.sp,
            ),
          ),
          SpaceItem(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: AppColors.pureWhite,
              ),
              Text(
                'Prepaid',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'Collection',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          //SpaceItem(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Costs',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: GestureDetector(
                    onTap: (){
                      _editPrePaidCost();
                    },
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${prepaid_cost}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: GestureDetector(
                    onTap: (){
                      _editCollectionCost();
                    },
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${collection_cost}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Against',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'Shipping',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: GestureDetector(
                    onTap: (){
                      _editPrepaidAgainstShipping();
                    },
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${prepaid_against_shipping}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: GestureDetector(
                    onTap: (){
                      _editCollectionAgainstShipping();
                    },
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${collection_against_shipping}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Miscellane..',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    '\\ Adapter',
                    style: TextStyle(
                      fontFamily: 'bahnschrift',
                      color: AppColors.pureBlack,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.pureWhite,
                ),
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: GestureDetector(
                    onTap: (){
                      _editCollectionAdapter();
                    },
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${collection_adapter}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Discount',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Container(
                  height: 35.h,
                  color: AppColors.pureWhite,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Material(
                  elevation: 1.0,
                  child: GestureDetector(
                    onTap: (){
                      _editCollectionDiscount();
                    },
                    child: Container(
                      height: 35.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          '${collection_discount}',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.darkBlue,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}