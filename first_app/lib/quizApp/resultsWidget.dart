import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/themes.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(this.score, this.resetQuiz, {Key? key}) : super(key: key);
  final int score;
  final VoidCallback resetQuiz;

  String get resultPhrase {
    var resultText = 'You did it!';
    if (score < 14) {
      resultText = 'You are an innocent smol ${String.fromCharCode(0x2665)}';
    } else if (score <= 20) {
      resultText = 'You are Bing Chillin! ${String.fromCharCode(0x1F366)}';
    } else if (score <= 25) {
      resultText = 'You are Sussy ${String.fromCharCode(0x1F440)}';
    } else {
      resultText = 'You are a Bad-Ass! ${String.fromCharCode(0x1F525)}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          Divider(
            height: 50,
            thickness: 2,
            indent: 150,
            endIndent: 150,
            color: Colors.grey,
          ),
          PlatformText(
            score.toString(),
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 50,
            thickness: 2,
            indent: 150,
            endIndent: 150,
            color: Colors.grey,
          ),
          PlatformElevatedButton(
            child: Column(children: [
              Text(
                'Refresh Quiz',
                style: TextStyle(color: AxonicsStyle.AXONICS_GREY),
              ),
              Icon(
                Icons.refresh,
                color: AxonicsStyle.AXONICS_GREY,
                size: 24,
                semanticLabel: 'Refresh Quiz',
              )
            ]),
            color: AxonicsStyle.AXONICS_GREEN,
            padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
