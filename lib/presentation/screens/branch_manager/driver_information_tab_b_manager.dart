import 'package:flutter/cupertino.dart';

import '../../widget/divider_between_list_elements.dart';
import '../../widget/edit_delete_evaluation_driver_buttons.dart';
import '../../widget/view_driver_information.dart';

class DriverInformationTabB_Manager extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight / 75,
        ),
        EditDeleteEvaluationDriverButtons(),
        DividerBetweenListElements(),
        Expanded(child: ViewDriverInformation()),
        SizedBox(
          height: screenHeight / 75,
        ),
      ],
    );
  }

}