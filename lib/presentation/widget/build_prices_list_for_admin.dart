import 'package:al_audah/presentation/widget/price_row_item_admin.dart';
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';

class buildPricesListForAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PriceRowItemAdmin();
        },
        separatorBuilder: (context, index) => SpaceItem(),
        itemCount: 15,
      ),
    );
  }

}