
import 'package:al_audah/presentation/widget/vacation_item.dart';
import 'package:flutter/cupertino.dart';

class BuildVacationsTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  ListView.builder(
     scrollDirection: Axis.horizontal,
     itemBuilder: (context, index) {
       return VacationsItem();
     },
     itemCount: 15,
   );
  }

}