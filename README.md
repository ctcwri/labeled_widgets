## labeled_widgets

Label the widgets, let click on the text also work. Now there are only four widgets: LabeledCheckBox, LabeledSwitch, LabeledCupertinoSwitch, LabeledRadio.
All parameters are exported, the usage method is exactly the same as the original widgets, 
and four attributes are added to the label to simplify the use: labelColor, labelCheckColor, labelFontSize, labelFontWeight

<img width="288" height="592" src="https://github.com/ctcwri/labeled_widgets/blob/master/example/assets/images/example.png"/>

LabeledCheckbox
```dart
bool? _checkboxValue = false;

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
```

LabeledSwitch
```dart
bool _switchValue = false;

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
```

LabeledCupertinoSwitch
```dart
bool _cupertinoSwitchValue = false;

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
```

LabeledRadio
```dart
int? _radioValue = 0;
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
```
