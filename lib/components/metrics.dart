import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tonal_application/styles/styles.dart';

class Metrics extends StatelessWidget {
  final String label, unit, asset;
  final int weight;
  final double height;
  const Metrics(
      {this.label = "", //default label
      this.unit = "lbs", //default unit as lbs
      this.asset = "assets/images/graph.svg", //default asset folder
      this.weight = 0, //default weight
      this.height =
          bubbleDiameter, // default value is the a const, but can customize
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: bubbleBoxDecoration,
      child: Stack(
        fit: StackFit
            .expand, // exapnd to fit parent which is the green container
        alignment: AlignmentDirectional.center,
        children: [
          // Graph asset is loaded here at the bottom of the stacl
          Positioned(
            top: height * 0.60,
            child: SvgPicture.asset(
              asset,
            ),
          ),
          // Label text
          Positioned(
            top: height * 0.15,
            child: Text(
              label,
              style: labelTextStyle,
            ),
          ),
          // Weight text
          Align(
            alignment: Alignment.center,
            child: Text(
              '$weight',
              style: weightTextStyle,
            ),
          ),
          // Unit
          Positioned(
            bottom: 0.125 * height,
            child: Text(
              unit,
              style: unitTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
