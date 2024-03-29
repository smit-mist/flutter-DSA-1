import 'package:dsa_simulation/src/utilities/address_maninter.dart';
import 'package:dsa_simulation/src/utilities/base_template.dart';
import 'package:dsa_simulation/src/utilities/widgets.dart';
import 'package:flutter/material.dart';
import 'package:widget_arrows/widget_arrows.dart';

import '../../../../constants.dart';
import '../tree_introduction.dart';

class InOrderTraversal extends StatefulWidget {
  @override
  _InOrderTraversalState createState() => _InOrderTraversalState();
}

class _InOrderTraversalState extends State<InOrderTraversal> {
  int visited = 0;
  double top = 0,left = 0.46;
  double tipLength = 5;
  int state = 0;
  int currentElement = -1;
  void forward(){
        if(state==0){
          currentElement=1;
        }
        else if(state==1){
          currentElement=10;
          top=0.1;
          left=0.26;
        }
        else if(state==2){
          currentElement=7;
          top=0.2;
          left=0.16;
          visited++;
        }
        else if(state==3){
          currentElement=10;
          top=0.1;
          left=0.26;
          visited++;
        }
        else if(state==4){
          currentElement=2;
          top=0.2;
          left=0.36;
          visited++;
        }
        else if(state==5){
          currentElement=10;
          top=0.1;
          left=0.26;
        }
        else if(state==6){
          currentElement=1;
          top=0;
          left=0.46;
          visited++;
        }
        else if(state==7){
          currentElement=5;
          top=0.1;
          left=(1-0.35);
        }
        else if(state==8){
          currentElement = 0;
          top=0.2;
          left=(1-0.45);
          visited++;
        }
        else if(state==9){
          currentElement=5;
          top=0.1;left=(1-0.35);visited++;
        }
        else if(state==10){
          currentElement=4;
          top=0.2;left=(1-0.25);visited++;
        }
        else{return;}state++;}
  void reverse(){
    if(state<=0)return;
    if(state==1){
      currentElement=-1;
    }
    else if(state==2){
      currentElement=1;
      top=0;
      left=0.46;
    }
    else if(state==3){
      currentElement=10;
      top=0.1;
      left=0.26;
      visited--;
    }
    else if(state==4){
      currentElement=7;
      top=0.2;
      left=0.16;
      visited--;
    }
    else if(state==5){
      currentElement=10;
      top=0.1;
      left=0.26;
      visited--;
    }
    else if(state==6){
      currentElement=2;
      top=0.2;left=0.36;
    }
    else if(state==7){
      currentElement=10;
      top=0.1;left=0.26;visited--;
    }
    else if(state==8){
      currentElement=1;
      top=0;left=0.46;
    }
    else if(state==9){
      currentElement=5;
      top=0.1;left=(1-0.35);visited--;
    }
    else if(state==10){
      currentElement=0;
      top=0.2;left=(1-0.45);visited--;
    }else if(state==11){
      currentElement=5;top=0.1;left=(1-0.35);visited--;
    }

    state--;
  }
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    path = ['Home', 'DS', 'Trees', 'Traversal', 'In-Order'];

    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(
            context, '/TreeTraversal', (route) => false);
        return true;
      },
      child: ArrowContainer(
        child: BaseTemplate(
          body: Scaffold(
            appBar: AppBar(
              leading: ClipRect(
                child: MaterialButton(
                  child: Icon(Icons.menu_rounded),
                  onPressed: () {
                    toggle();
                  },
                  splashColor: Colors.black,
                ),
              ),
              backgroundColor: kThemeColor,
              iconTheme: IconThemeData(color: Colors.white),
              title: Center(
                child: Container(
                  width: width * 0.9,
                  height: 30,
                  child: AddressBar(),
                ),
              ),
            ),
            body: Container(
              width: width,
              color: Colors.black,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'In-Order Tree Traversal',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white),
                    ),
                    Container(
                      height: height * 0.6,
                      width: width,
                      color: Colors.black,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [

                          ArrowElement(
                            id: '01',
                            targetId: '5',
                            sourceAnchor: Alignment.centerRight,
                            targetAnchor: Alignment.topCenter,
                            color: Colors.white,
                            flip: true,
                            child: ArrowElement(
                              id: '1',
                              targetId: '10',
                              sourceAnchor: Alignment.centerLeft,
                              targetAnchor: Alignment.topCenter,
                              color: Colors.white,
                              flip: true,
                              child: Positioned(
                                top: 0,
                                child: AnimatedContainer(
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 500),
                                  height: width * 0.12,
                                  width: width * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color:currentElement==1?Colors.indigo: Colors.white,
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //1
                          ArrowElement(
                            id: '010',
                            targetId: '2',
                            sourceAnchor: Alignment.centerRight,
                            targetAnchor: Alignment.topCenter,
                            color: Colors.white,
                            flip: true,
                            child: ArrowElement(
                              id: '10',
                              targetId: '7',
                              sourceAnchor: Alignment.centerLeft,
                              targetAnchor: Alignment.topCenter,
                              color: Colors.white,
                              flip: true,
                              child: Positioned(
                                top: height * 0.1,
                                left: width * 0.25,
                                child: AnimatedContainer(
                                  child: Center(
                                    child: Text(
                                      '10',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 500),
                                  height: width * 0.12,
                                  width: width * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color:currentElement==10?Colors.indigo: Colors.white,

                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //10
                          ArrowElement(
                            id: '05',
                            targetId: '4',
                            sourceAnchor: Alignment.centerRight,
                            targetAnchor: Alignment.topCenter,
                            color: Colors.white,
                            flip: true,
                            child: ArrowElement(
                              id: '5',
                              targetId: '0',
                              sourceAnchor: Alignment.centerLeft,
                              targetAnchor: Alignment.topCenter,
                              color: Colors.white,
                              flip: true,
                              child: Positioned(
                                top: height * 0.1,
                                right: width * 0.25,
                                child: AnimatedContainer(
                                  child: Center(
                                      child: Text(
                                    '5',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  )),
                                  duration: Duration(milliseconds: 500),
                                  height: width * 0.12,
                                  width: width * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color:currentElement==5?Colors.indigo: Colors.white,

                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //5
                          ArrowElement(
                            id: '7',
                            child: Positioned(
                              top: height * 0.2,
                              left: width * 0.15,
                              child: AnimatedContainer(
                                child: Center(
                                  child: Text(
                                    '7',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                                duration: Duration(milliseconds: 500),
                                height: width * 0.12,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:currentElement==7?Colors.indigo: Colors.white,

                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //7
                          ArrowElement(
                            id: '2',
                            child: Positioned(
                              top: height * 0.2,
                              left: width * 0.35,
                              child: AnimatedContainer(
                                child: Center(
                                    child: Text(
                                  '2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                )),
                                duration: Duration(milliseconds: 500),
                                height: width * 0.12,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:currentElement==2?Colors.indigo: Colors.white,

                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //2

                          ArrowElement(
                            id: '0',
                            child: Positioned(
                              top: height * 0.2,
                              right: width * 0.35,
                              child: AnimatedContainer(
                                child: Center(
                                    child: Text(
                                  '0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                )),
                                duration: Duration(milliseconds: 500),
                                height: width * 0.12,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:currentElement==0?Colors.indigo: Colors.white,

                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //0
                          ArrowElement(
                            id: '4',
                            child: Positioned(
                              top: height * 0.2,
                              right: width * 0.15,
                              child: AnimatedContainer(
                                child: Center(
                                    child: Text(
                                  '4',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                )),
                                duration: Duration(milliseconds: 500),
                                height: width * 0.12,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:currentElement==4?Colors.indigo: Colors.white,

                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //4
                          Positioned(
                            bottom: 0,
                            left: width * 0.08,
                            child: Container(
                              width: width,
                              height: height * 0.1,
                              child: Row(
                                children: [
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    child: Center(
                                      child: Text(
                                        visited > 0 ? '7' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: visited > 0
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    child: Center(
                                      child: Text(
                                        visited > 1 ? '10' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: visited > 1
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    child: Center(
                                      child: Text(
                                        visited > 2 ? '2' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: visited > 2
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    child: Center(
                                      child: Text(
                                        visited > 3 ? '1' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: visited > 3
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    child: Center(
                                      child: Text(
                                        visited > 4 ? '0' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    decoration: BoxDecoration(
                                      color: visited > 4
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    child: Center(
                                      child: Text(
                                        visited > 5 ? '5' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    decoration: BoxDecoration(
                                      color: visited > 5
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    child: Center(
                                      child: Text(
                                        visited > 6 ? '4' : '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 500),
                                    height: width * 0.13,
                                    width: width * 0.12,
                                    decoration: BoxDecoration(
                                      color: visited > 6
                                          ? kThemeColor
                                          : Colors.transparent,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 500),
                            top:height*top+30,
                            left: width*left,
                            curve: Curves.ease,
                            child: AnimatedOpacity(
                              duration: Duration(milliseconds: 700),
                              opacity: state>0?1:0,
                              child: Text(
                                '😇',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: () {
                            setState(() {
                              reverse();
                            });
                          },
                          child: Icon(Icons.backspace_sharp),
                          color: kThemeColor,
                        ),
                        RaisedButton(
                            onPressed: () {
                              setState(() {
                                forward();
                                print(currentElement);
                              });
                            },
                            child: Icon(Icons.forward),
                            color: kThemeColor),
                      ],
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
