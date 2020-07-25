import 'package:covid19/component/reusable_card.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class Detail extends StatelessWidget {
  Detail(
      {@required this.bmi,
      @required this.resultText,
      @required this.resultMsg});

  final String bmi;
  final String resultText;
  final String resultMsg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultValueTextStyle,
                  ),
                  Container(
                    padding: new EdgeInsets.all(10.0),
                    child: Text(
                      resultMsg,
                      textAlign: TextAlign.center,
                      style: kButtonTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomCrdColor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  'RE_CALCULATE',
                  style: kButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
