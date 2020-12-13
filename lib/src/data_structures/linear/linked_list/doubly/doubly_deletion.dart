import 'package:dsa_simulation/src/Utilities/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_arrows/arrows.dart';
import 'package:widget_arrows/widget_arrows.dart';

import '../../../../constants.dart';


class DoublyDeletion extends StatefulWidget {
  @override
  _DoublyDeletionState createState() => _DoublyDeletionState();
}

class _DoublyDeletionState extends State<DoublyDeletion> {
  int currentState = 0;
  Color newArrowColor1 = Colors.white,newArrowColor2 = Colors.white;
  String newElementText = 'Data',secondNext = 'new',thirdPrev = 'new';
  String headPointer = 'first';
  Color newElementColor = Colors.red;

  AlignmentGeometry firstSourceFrontArrow = Alignment.centerRight;
  AlignmentGeometry firstTargetArrow = Alignment.centerLeft;
  AlignmentGeometry secondSourceFrontArrow = Alignment.centerRight;
  AlignmentGeometry secondTargetArrow = Alignment.centerLeft;
  AlignmentGeometry thirdPrevious = Alignment.topRight;

  void forwardAnimaton(){
    if(currentState==0){
      headPointer = 'second';
    }
    else if(currentState==1){
      thirdPrev = 'second';
      thirdPrevious = Alignment.bottomRight;
    }
    else if(currentState ==2){
      secondNext = 'third';
    }
    else if(currentState == 3) {
      newArrowColor1 = newArrowColor2 = newElementColor = Colors.transparent;
      newElementText = '';
    } else return;

    currentState++;
  }
  void reverseAnimation(){
    if(currentState==4){
      newArrowColor1 = newArrowColor2 = Colors.white;
      newElementColor = Colors.red;
          newElementText = 'Data';
    }
    else if(currentState ==3){
      secondNext = 'new';
    }
    else if(currentState ==2){
      thirdPrev = 'new';
      thirdPrevious = Alignment.topRight;
    }
    else if(currentState == 1)
      headPointer = 'first';
    else return;
    currentState--;
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ArrowContainer(
      child: Scaffold(
        appBar: appBar(context),
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Doubly Linked List Deletion',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                //height: height * 0.01,
                //width: double.infinity,
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.073,),
                  ArrowElement(
                    id: 'headPointer',
                    targetId: headPointer,
                    sourceAnchor: Alignment.bottomCenter,
                    targetAnchor: Alignment.topCenter,
                    color: Colors.white,
                    child: Text(
                      'Head Pointer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.02
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.43,),
                  ArrowElement(
                    id: 'tailPointer',
                    targetId: 'third',
                    sourceAnchor: Alignment.bottomCenter,
                    targetAnchor: Alignment.topCenter,
                    color: Colors.white,
                    arcDirection: ArcDirection.Right,
                    child: Text(
                      'Tail Pointer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.02
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ArrowElement(
                    id: 'firstBack',
                    targetId: 'null1',
                    sourceAnchor: Alignment.bottomLeft,
                    targetAnchor: Alignment.centerLeft,
                    color: Colors.white,
                    arcDirection: ArcDirection.Left,
                    child: ArrowElement(
                      id: 'first',
                      targetId: 'second',
                      sourceAnchor: firstSourceFrontArrow,
                      targetAnchor: firstTargetArrow,
                      color: Colors.white,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: height * 0.05,
                        width: width * 0.2,
                        child: Center(
                            child: Text(
                              'Data',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          //borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  ArrowElement(
                    id: 'secondBack',
                    targetId: 'first',
                    color: Colors.white,
                    sourceAnchor: Alignment.bottomLeft,
                    targetAnchor: Alignment.bottomRight,
                    child: ArrowElement(
                      id: 'second',
                      targetId: secondNext,
                      sourceAnchor: secondSourceFrontArrow,
                      targetAnchor: secondTargetArrow,
                      color: Colors.white,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        height: height * 0.05,
                        width: width * 0.2,
                        child: Center(
                            child: Text(
                              'Data',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            )),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          //borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  ArrowElement(
                    id: 'thirdBack',
                    targetId: thirdPrev,
                    sourceAnchor: Alignment.bottomLeft,
                    targetAnchor: thirdPrevious,
                    color: Colors.white,
                    child: ArrowElement(
                      id: 'third',
                      targetId: 'null2',
                      sourceAnchor: Alignment.bottomRight,
                      targetAnchor: Alignment.centerRight,
                      color: Colors.white,
                      arcDirection: ArcDirection.Right,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: height * 0.05,
                        width: width * 0.2,
                        child: Center(
                            child: Text(
                              'Data',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            )),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          //borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ArrowElement(
                    id: 'null1',
                    targetAnchor: Alignment.centerLeft,
                    color: Colors.white,
                    child: Center(
                        child: Text(
                          'Null',

                        )),
                  ),
                  ArrowElement(
                    id: 'new1',
                    targetId: 'third',
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.bottomCenter,
                    color: newArrowColor1,
                    child: ArrowElement(
                      id: 'new',
                      targetId: 'second',
                      targetAnchor: Alignment.bottomCenter,
                      sourceAnchor: Alignment.topCenter,
                      color: newArrowColor2,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: height * 0.05,
                        width: width * 0.2,
                        child: Center(
                            child: Text(
                              newElementText,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,

                              ),
                            )),
                        decoration: BoxDecoration(
                          color: newElementColor,
                          //borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  ArrowElement(
                    id: 'null2',
                    color: Colors.white,
                    child: Center(
                        child: Text(
                          'Null',

                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        reverseAnimation();
                      });
                    },
                    child: Icon(Icons.backspace_sharp),
                    color: kThemeColor,
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        forwardAnimaton();
                      });
                    },
                    child: Icon(Icons.forward),
                    color: kThemeColor,
                  ),
                ],
              ),
              Container(
                height: height * 0.3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
