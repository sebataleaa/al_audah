
import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AboutUsWhoAreWe extends StatelessWidget{

  String bio = 'Lorem Ipsum is simply dummy text of the printingand typesetting industry. Lorem Ipsum has beenthe industrys standard dummy text ever since the1500s,Lorem Ipsum has been the industry sstandard dummy text ever since the 1500s';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceItem(),
            Text(
              'Who Are We ?',
              style: TextStyle(
                fontFamily: 'Bauhaus',
                color: AppColors.yellow,
                fontSize: 18.sp,
              ),
            ),
            SpaceItem(),
            Text(
              '${bio}',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
                fontSize: 16.sp,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
            ),
          ],
        ),
      ),
    );
  }

}