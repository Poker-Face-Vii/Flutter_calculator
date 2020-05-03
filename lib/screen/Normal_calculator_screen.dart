import 'package:flutter/material.dart';

class ScreenNormalCalculator extends StatelessWidget {
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
        children: [
          Expanded(flex: 1, child: _Display()),
          Expanded(flex: 3, child: _Numpad())
        ],
      ),
    );
  }
}

class _Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '9 X 5 = 0',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class _Numpad extends StatelessWidget {
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
                children: [
                  CalculatorButton(
                    value: 'e',
                  ),
                  CalculatorButton(
                    value: 'π',
                  ),
                  CalculatorButton(
                    value: 'sin',
                  ),
                  CalculatorButton(
                    value: 'deg',
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
                  ),
                  CalculatorButton(
                    value: '(',
                  ),
                  CalculatorButton(
                    value: ')',
                  ),
                  CalculatorButton(
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
                    value: '7',
                  ),
                  CalculatorButton(
                    value: '8',
                  ),
                  CalculatorButton(
                    value: '9',
                  ),
                  CalculatorButton(
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
                  ),
                  CalculatorButton(
                    value: '5',
                  ),
                  CalculatorButton(
                    value: '6',
                  ),
                  CalculatorButton(
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
                  ),
                  CalculatorButton(
                    value: '2',
                  ),
                  CalculatorButton(
                    value: '3',
                  ),
                  CalculatorButton(
                    value: '+',
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
                    value: '0',
                    flex: 2,
                  ),
                  CalculatorButton(
                    value: '.',
                  ),
                 
                  CalculatorButton(
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
  final Color color;
  final Color textColor;

  const CalculatorButton(
      {this.color, this.textColor, this.value, this.flex, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          onPressed: () => onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            // side: BorderSide(color: Colors.red),
          ),
          color: color ?? Color(0xff192427),
          child: Center(
            child: Text(
              value,
              style: TextStyle(color: textColor ?? Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
