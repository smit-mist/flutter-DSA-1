import 'package:dsa_simulation/src/utilities/address_maninter.dart';
import 'package:dsa_simulation/src/utilities/base_template.dart';
import 'package:dsa_simulation/src/utilities/widgets.dart';
import 'package:flutter/material.dart';
import 'package:widget_arrows/arrows.dart';
import 'package:widget_arrows/widget_arrows.dart';

class TreeIntroduction extends StatefulWidget {
  @override
  _TreeIntroductionState createState() => _TreeIntroductionState();
}

class _TreeIntroductionState extends State<TreeIntroduction> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    path = ['Home', 'DS', 'Trees', 'Intro'];
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(
            context, '/LinearNonLinearPage', (route) => false);
        return true;
      },
      child: BaseTemplate(
        body: Scaffold(
          appBar: appBar(context),
          body: Container(
            height: height,
            width: width,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArrowContainer(
                  child: Stack(
                    children: [

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
