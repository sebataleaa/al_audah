import 'package:flutter/cupertino.dart';
import '../../widget/view_driver_information.dart';

class DriverInformationTabAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight / 75,
        ),
        Expanded(child: ViewDriverInformation()),
        SizedBox(
          height: screenHeight / 75,
        ),
      ],
    );
  }

}