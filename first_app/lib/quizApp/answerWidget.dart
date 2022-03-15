import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/themes.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AnswerWidget extends StatelessWidget {
  AnswerWidget(this.btnLabel, this.onPressHandler);
  final VoidCallback onPressHandler;
  final String btnLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: double.infinity / 50, right: 50),
      // width: double.infinity,
      width: MediaQuery.of(context).size.width*0.66,
      child: PlatformElevatedButton(
        child: Text(btnLabel, style: TextStyle(color: AxonicsStyle.AXONICS_GREY),),
        color: AxonicsStyle.AXONICS_GREEN,
        onPressed: onPressHandler,
      ),
    );
  }
}
