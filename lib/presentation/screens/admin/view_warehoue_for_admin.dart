// import 'package:al_audah/presentation/widget/add_branch_warehouse_information.dart';
// import 'package:al_audah/presentation/widget/add_warehouse_text.dart';
// import 'package:al_audah/presentation/widget/divider_between_list_elements.dart';
// import 'package:al_audah/presentation/widget/divider_space_item.dart';
// import 'package:al_audah/presentation/widget/space_item.dart';
// import 'package:al_audah/presentation/widget/warehouse_information_text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../constants/app_colors.dart';
// import '../../widget/divider_item.dart';
// import '../../widget/edit_delete_warehouse_buttons.dart';
// import '../../widget/view_branch_warehouse_information.dart';
//
// class ViewWarehouseScreenForAdmin extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Align(
//           alignment: Alignment.centerRight,
//           child: WarehouseInformationText(),
//         ),
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.chevron_left,
//             color: AppColors.darkBlue,
//           ),
//         ),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(1.0),
//           child: DividerItem(),
//         ),
//       ),
//       body: Column(
//         children: [
//           SpaceItem(),
//           EditDeleteWarehouseButtons(),
//           DividerSpaceItem(),
//           Expanded(
//             child: ViewBranchWarehouseInformation(),
//           ),
//           SpaceItem(),
//         ],
//       ),
//     );
//   }
// }


import 'package:al_audah/presentation/widget/divider_space_item.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:al_audah/presentation/widget/warehouse_information_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';


class ViewWarehouseForAdmin extends StatefulWidget {
  @override
  _ViewWarehouseForAdminState createState() => _ViewWarehouseForAdminState();
}

class _ViewWarehouseForAdminState extends State<ViewWarehouseForAdmin> {
  bool isEditing = false;
  final TextEditingController branchNameController = TextEditingController();
  final TextEditingController warehouseNameController = TextEditingController();
  final TextEditingController warehouseLocationController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    branchNameController.text = 'Initial Branch Name';
    warehouseNameController.text = 'Initial Warehouse Name';
    warehouseLocationController.text = 'Initial Location';
    areaController.text = 'Initial Area';
    notesController.text = 'Initial Notes';
  }

  void toggleEdit() {
    setState(() {
      isEditing = !isEditing;
    });
  }

  _deleteWarehouse (BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              "do you want to delete this warehouse ?",
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.yellow,
                      fontFamily: 'bahnschrift',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: WarehouseInformationText(),
        ),
        leading: IconButton(
          onPressed: () {},
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
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 40.h,
                  child: FloatingActionButton(
                    onPressed: () {
                      _deleteWarehouse(context);
                    },
                    child: Icon(
                      Icons.delete,
                      color: AppColors.yellow,
                    ),
                    elevation: 0.0,
                    backgroundColor: AppColors.darkBlue,
                    heroTag: 'delete w',
                  ),
                ),
                LogoImageWidget(),
                Container(
                  height: 40.h,
                  width: 40.h,
                  child: FloatingActionButton(
                    onPressed: toggleEdit,
                    child: Icon(
                      isEditing ?
                      Icons.save_alt
                      : Icons.edit,
                        color: AppColors.yellow,
                    ),
                    elevation: 0.0,
                    backgroundColor: AppColors.darkBlue,
                    heroTag: 'edit w',
                  ),
                ),
              ],
            ),
          ),
          DividerSpaceItem(),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 70.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppColors.lightBlue,
              ),
              child: ListView(
                children: [
                  buildTextField('Branch Name', branchNameController),
                  buildTextField('Warehouse Name', warehouseNameController),
                  buildTextField('Location', warehouseLocationController),
                  buildTextField('Area', areaController),
                  buildTextField('Notes', notesController),
                ],
              ),
            ),
          ),
          SpaceItem(),
        ],
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.darkBlue,
            fontFamily: 'bahnschrift',
            fontSize: 16.sp,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 44.h,
          decoration: BoxDecoration(
            color: AppColors.pureWhite,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppColors.darkBlue,
            ),
          ),
          child: Center(
            child: isEditing
                ? TextField(
              controller: controller,
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.pureWhite,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.darkBlue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.darkBlue,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            )
                : Text(
              controller.text,
              style: TextStyle(
                fontFamily: 'bahnschrift',
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
        SpaceItem(),
      ],
    );
  }
}
