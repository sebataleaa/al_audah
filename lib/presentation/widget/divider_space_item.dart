import 'package:al_audah/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';

import 'divider_item.dart';

class DividerSpaceItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpaceItem(),
        DividerItem(),
        SpaceItem(),
      ],
    );
  }

}