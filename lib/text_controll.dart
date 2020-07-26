import 'package:flutter/material.dart';

import './text_output.dart';

class TextControll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControll> {
  String _mainText = 'this is the first assignment';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RaisedButton(
        onPressed: () {
          setState(() {
            _mainText = 'This Changed!';
          });
        },
        child: Text('Change Text'),
      ),
      TextOutput(_mainText)
    ]);
  }
}
