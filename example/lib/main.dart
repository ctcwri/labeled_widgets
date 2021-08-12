import 'package:flutter/material.dart';
import 'package:labeled_widgets/labeled_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool? _checkboxValue = false;
  bool _switchValue = false;
  bool _cupertinoSwitchValue = false;
  int? _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LabeledCheckbox(
              label: 'Label',
              value: _checkboxValue,
              labelCheckColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                _checkboxValue = value;
                });
              },
            ),
            LabeledSwitch(
              label: 'Label',
              value: _switchValue,
              labelCheckColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            LabeledCupertinoSwitch(
              label: 'Label',
              value: _cupertinoSwitchValue,
              labelCheckColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  _cupertinoSwitchValue = value;
                });
              },
            ),
            LabeledRadio<int>(
              label: 'Label 0',
              value: 0,
              groupValue: _radioValue,
              labelCheckColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  _radioValue = value;
                });
              },
            ),
            LabeledRadio<int>(
              label: 'Label 1',
              value: 1,
              groupValue: _radioValue,
              labelCheckColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _radioValue = value;
                });
              },
            ),
            LabeledRadio<int>(
              label: 'Label 2',
              value: 2,
              groupValue: _radioValue,
              labelCheckColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _radioValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
