import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  ButtonWidgetState createState() => ButtonWidgetState();
}

class ButtonWidgetState extends State<ButtonWidget> {
  late Color _buttonColor;

  @override
  void initState() {
    _buttonColor = Colors.blue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (_buttonColor == Colors.blue) {
            _buttonColor = Colors.yellow;
          } else {
            _buttonColor = Color(
              (math.Random().nextDouble() * 0x16777216).toInt(),
            ).withOpacity(1.0);
          }
        });
      },
      style: ElevatedButton.styleFrom(
        primary: _buttonColor,
      ),
      child: const Text(
        'Привіт',
        style: TextStyle(fontSize: 55),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('_buttonColor', _buttonColor));
  }
}
