import 'package:al_audah/constants/app_colors.dart';
import 'package:al_audah/presentation/screens/admin/abouts_us_for_admin_screen.dart';
import 'package:al_audah/presentation/screens/admin/add_branch_manager_screen.dart';
import 'package:al_audah/presentation/screens/admin/add_branch_screen.dart';
import 'package:al_audah/presentation/screens/admin/add_powers_admin.dart';
import 'package:al_audah/presentation/screens/admin/add_warehouse_manager_screen.dart';
import 'package:al_audah/presentation/screens/admin/add_warehouse_screen.dart';
import 'package:al_audah/presentation/screens/admin/admin_main_screen.dart';
import 'package:al_audah/presentation/screens/admin/branches_list_for_admin_screen.dart';
import 'package:al_audah/presentation/screens/admin/customer_view_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/customers_list_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/edit_branch_screen.dart';
import 'package:al_audah/presentation/screens/admin/effective_trip_record_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/employees_list_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/manifest_screen_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/order_details_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/prices_list_screen.dart';
import 'package:al_audah/presentation/screens/admin/trips_list_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/vacation_list_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/view_branch_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/view_branch_manager_screen.dart';
import 'package:al_audah/presentation/screens/admin/view_driver_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/view_employee_for_admin.dart';
import 'package:al_audah/presentation/screens/admin/view_powers_admin.dart';
import 'package:al_audah/presentation/screens/branch_manager/add_driver_screen.dart';
import 'package:al_audah/presentation/screens/branch_manager/add_employee_screen.dart';
import 'package:al_audah/presentation/screens/branch_manager/add_powers_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/edit_employee_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/employees_list_for%20_b_manger.dart';
import 'package:al_audah/presentation/screens/branch_manager/view_driver_b_manager.dart';
import 'package:al_audah/presentation/screens/branch_manager/view_employee_b_manager.dart';
import 'package:al_audah/presentation/screens/employee/add_complaint_screen_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/add_customer_screen.dart';
import 'package:al_audah/presentation/screens/employee/add_trip_invoice.dart';
import 'package:al_audah/presentation/screens/employee/add_trip_screen.dart';
import 'package:al_audah/presentation/screens/employee/edit_trip_invoice_screen.dart';
import 'package:al_audah/presentation/screens/employee/edit_trip_screen.dart';
import 'package:al_audah/presentation/screens/employee/manifest_screen_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/tracking_screen_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/trips_list_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/view_branch_information_screen.dart';
import 'package:al_audah/presentation/screens/employee/branches_list_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/categories_screen.dart';
import 'package:al_audah/presentation/screens/employee/customers_list_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/customers_view_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/edit_customer_screen.dart';
import 'package:al_audah/presentation/screens/employee/trucks_list_for_employee.dart';
import 'package:al_audah/presentation/screens/auth/log_in_screen.dart';
import 'package:al_audah/presentation/screens/employee/employee_main_screen.dart';
import 'package:al_audah/presentation/screens/employee/view_trip_after_invoice_employee.dart';
import 'package:al_audah/presentation/screens/employee/view_trip_before_invoice_employee.dart';
import 'package:al_audah/presentation/screens/employee/view_trip_invoice_for_employee.dart';
import 'package:al_audah/presentation/screens/employee/view_truck_for_employee.dart';
import 'package:al_audah/presentation/screens/search/search_resulte_for_admin.dart';
import 'package:al_audah/presentation/widget/add_source_dest_in_trip_invoice_for_employee.dart';
import 'package:al_audah/presentation/widget/trips_list_text.dart';
import 'package:al_audah/presentation/widget/add_branch_warehouse_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'presentation/screens/main_screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.light(primary: AppColors.yellow),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: EditTripInvoiceScreen(),
        );
      },
    );
  }
}
