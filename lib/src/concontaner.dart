import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Concontainer extends StatefulWidget {
  final String title;
  final String subTitle;
  final double height;
  final double width;
  final Color color;
  final double titleFontSize;
  final double subTitleFontSize;

  const Concontainer(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.height,
      required this.width,
      required this.color,
      required this.titleFontSize,
      required this.subTitleFontSize});

  @override
  State<Concontainer> createState() => _ConcontainerState();
}

class _ConcontainerState extends State<Concontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.color,
      ),
      height: widget.height,
      width: widget.width,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(
                fontSize: widget.titleFontSize,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(widget.subTitle,
              style: TextStyle(
                  fontSize: widget.subTitleFontSize,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
