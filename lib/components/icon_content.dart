import 'package:flutter/material.dart';
import '../constants.dart';
class IconContent extends StatelessWidget {
  final IconData myIcon;
  final String label;
  const IconContent({@required this.myIcon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
