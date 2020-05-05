import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:pocket_calculator/mobx/N_calculator_state.dart';

class ScreenNormalCalculator extends StatefulWidget {
  @override
  _ScreenNormalCalculatorState createState() => _ScreenNormalCalculatorState();
}

class _ScreenNormalCalculatorState extends State<ScreenNormalCalculator> {
  final NCS ncs = NCS();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff070f14),
        leading: Icon(Icons.clear_all),
        title: Center(
            child: Text(
          'Calc.',
          textAlign: TextAlign.center,
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.close),
          )
        ],
      ),
      backgroundColor: Color(0xff070f14),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(flex: 1, child: _Display(ncs)),
          Expanded(flex: 3, child: _NumPad(ncs))
        ],
      ),
    );
  }
}

class _Display extends StatelessWidget {
  final NCS state;

  const _Display(this.state);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Text(
                state.display,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              state.equalResult == null ? '' : state.equalResult.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}

class _NumPad extends StatelessWidget {
  final NCS state;

  const _NumPad(this.state);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CalculatorButton(
                    /*//todo: this button function shuld FIX -- it need to understand that the last element is operator or a number*/
                    // onPressed: ()=>state.delete(),
                    color: Colors.amber.withAlpha(60),textColor: Colors.amber,
                    flex: 0,
                    value: '⌫',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  CalculatorButton(
                    value: 'C',
                    color: Color(0xff28191c),
                    textColor: Color(0xff974450),
                    onPressed: () {
                      state.displayClear();
                    },
                  ),
                  CalculatorButton(
                    onPressed: ()=>state.operation('(', '('),
                    value: '(',
                  ),
                  CalculatorButton(
                    onPressed: ()=>state.operation(')', ')'),
                    value: ')',
                  ),
                  CalculatorButton(
                    onPressed: ()=> state.operation('/', '÷'),
                    value: '÷',
                    color: Color(0xff2a1d35),
                    textColor: Color(0xffb07cb9),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  CalculatorButton(
                    onPressed: () {
                      state.num('7');
                    },
                    value: '7',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      state.num('8');
                    },
                    value: '8',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      state.num('9');
                    },
                    value: '9',
                  ),
                  CalculatorButton(
                    onPressed: () => state.operation('*','×'),
                    value: '×',
                    color: Color(0xff2a1d35),
                    textColor: Color(0xffb07cb9),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  CalculatorButton(
                    value: '4',
                    onPressed: () {
                      state.num('4');
                    },
                  ),
                  CalculatorButton(
                    value: '5',
                    onPressed: () {
                      state.num('5');
                    },
                  ),
                  CalculatorButton(
                    value: '6',
                    onPressed: () {
                      state.num('6');
                    },
                  ),
                  CalculatorButton(
                    onPressed: () {
                      state.operation('-','-');
                    },
                    value: '-',
                    color: Color(0xff2a1d35),
                    textColor: Color(0xffb07cb9),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  CalculatorButton(
                    value: '1',
                    onPressed: () {
                      state.num('1');
                    },
                  ),
                  CalculatorButton(
                    value: '2',
                    onPressed: () {
                      state.num('2');
                    },
                  ),
                  CalculatorButton(
                    value: '3',
                    onPressed: () {
                      state.num('3');
                    },
                  ),
                  CalculatorButton(
                    value: '+',
                    color: Color(0xff2a1d35),
                    textColor: Color(0xffb07cb9),
                    onPressed: () {
                      state.operation('+','+');
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  CalculatorButton(
                    onPressed: () {
                      state.num('0');
                    },
                    value: '0',
                    flex: 2,
                  ),
                  CalculatorButton(
                    // todo: this doesn't work properly well 
                    // onPressed: ()=> state.dot('.', '.'),
                    
                    value: '.',
                  ),
                  CalculatorButton(
                    onPressed: () {
                      state.evaluate();
                    },
                    value: '=',
                    color: Color(0xff3bd3ae),
                    textColor: Color(0xffb1efeb),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String value;
  final int flex;
  final Function onPressed;

  ///Color of the button
  final Color color;
  final Color textColor;

  const CalculatorButton(
      {this.color, this.textColor, this.value, this.flex, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        margin: EdgeInsets.all(8),
        child: RaisedButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            // side: BorderSide(color: Colors.red),
          ),
          color: color ?? Color(0xff192427),
          child: Center(
            child: Text(
              value,
              style: TextStyle(color: textColor ?? Colors.white,fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
