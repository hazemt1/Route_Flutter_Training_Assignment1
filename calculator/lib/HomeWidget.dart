import 'package:calculator/HomeButton.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int calculation = 0;

  String all = '';
  String current = '';

  bool remain = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 400,
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 100)),
                  Text(
                    all,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Text(
                    current,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              HomeButton(
                  Text('clr'),
                  () => {
                          setState(() {
                            current = '';
                            all = '';
                          })
                      },
                  3),
              HomeButton(
                  Icon(Icons.backspace_outlined),
                  () => {
                        setState(() {
                          if (current.length >= 1)
                            current = current.substring(0, current.length - 1);
                        })
                      },
                  3),
              HomeButton(
                  Text('/'),
                  () => {
                        setState(() {
                          if (current.length > 0) {

                            all += ' / ';
                            current = '';
                          }
                          if (remain== true)
                            remain=false;
                        })
                      },
                  2),
            ],
          ),
          Row(
            children: [
              HomeButton(
                Text('7'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '7';
                    all += '7';
                  })
                },
              ),
              HomeButton(
                Text('8'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '8';
                    all += '8';
                  })
                },
              ),
              HomeButton(
                Text('9'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '9';
                    all += '9';
                  })
                },
              ),
              HomeButton(
                Text('*'),
                () => {
                  setState(() {
                    if (current.length > 0) {
                      all += ' * ';
                      current = '';
                    }
                    if (remain== true)
                      remain=false;
                  })
                },
              ),
            ],
          ),
          Row(
            children: [
              HomeButton(
                Text('4'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '4';
                    all += '4';
                  })
                },
              ),
              HomeButton(
                Text('5'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '5';
                    all += '5';
                  })
                },
              ),
              HomeButton(
                Text('6'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '6';
                    all += '6';
                  })
                },
              ),
              HomeButton(
                Text('--'),
                () => {
                  setState(() {
                    if (current.length > 0) {
                      all += ' - ';
                      current = '';
                    } else {
                      current += '-';
                      all += '-';
                    }
                    if (remain== true)
                      remain=false;
                  })
                },
              ),
            ],
          ),
          Row(
            children: [
              HomeButton(
                Text('1'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '1';
                    all += '1';
                  })
                },
              ),
              HomeButton(
                Text('2'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '2';
                    all += '2';
                  })
                },
              ),
              HomeButton(
                Text('3'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '3';
                    all += '3';
                  })
                },
              ),
              HomeButton(
                Text('+'),
                () => {
                  setState(() {
                    if (current.length > 0) {
                      all += ' + ';
                      current = '';
                    }
                    if (remain== true)
                      remain=false;
                  })
                },
              ),
            ],
          ),
          Row(
            children: [
              HomeButton(
                Text('0'),
                () => {
                  setState(() {
                    if (remain== true)
                      current='';
                    current += '0';
                    all += '0';
                  })
                },
              ),
              HomeButton(
                Text('.'),
                () => {
                  setState(() {
                    if (!current.contains('.')) {
                      if (remain== true)
                        current='';
                      current += '.';
                      all += '.';
                    }
                  })
                },
              ),
              HomeButton(
                Text('='),
                () => {
                  setState(() {
                    calculate();
                    all = '';
                    remain=true;
                  })
                },
                2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void calculate() {
    var list = all.split(' ');
    if (list.length > 2) {
      double sum;

      while (true) {
        int indexOfMulti = list.indexOf('*');
        int indexOfDev = list.indexOf('/');
        // print('index of multi $indexOfMulti');
        // print('index of Dev $indexOfDev');
        if (indexOfMulti != -1 &&
            ((indexOfDev != -1 && indexOfMulti < indexOfDev) ||
            indexOfDev == -1)) {
          // print('entered multi');
          double tempNum1 = double.parse(list[indexOfMulti - 1]);
          double tempNum2 = double.parse(list[indexOfMulti + 1]);
          double sumTemp = tempNum1 * tempNum2;
          // print('temp1 $tempNum1');
          // print('temp2 $tempNum2');
          // print('sumTemp $sumTemp');
          list[indexOfMulti - 1] = sumTemp.toString();
          list.removeAt(indexOfMulti);
          list.removeAt(indexOfMulti);
        } else if (indexOfDev != -1 &&
            ((indexOfMulti != -1 && indexOfDev < indexOfMulti) ||
            indexOfMulti == -1)) {
          // print('entered dev');
          double tempNum1 = double.parse(list[indexOfDev - 1]);
          double tempNum2 = double.parse(list[indexOfDev + 1]);
          double sumTemp = tempNum1 / tempNum2;
          // print('temp1 $tempNum1');
          // print('temp2 $tempNum2');
          // print('sumtemp1 $sumTemp');
          list[indexOfDev - 1] = sumTemp.toString();
          list.removeAt(indexOfDev);
          list.removeAt(indexOfDev);
        }
        else
          break;
      }
      sum = double.parse(list[0]);
      if(list.length>2) {
        for (int i = 1; i < list.length; i += 2) {
          // print('i is $i');
          // print('sum is $sum');
          double nextNum = double.parse(list[i + 1]);
          // print('nextNum is $nextNum');
          // print('op is ${list[i]}');
          if (list[i] == '+')
            sum += nextNum;
          else if (list[i] == '-')
            sum -= nextNum;
          // print(sum);
        }
      }
      current = sum.toString();

    }
  }
}
