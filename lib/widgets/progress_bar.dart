import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ProgressBar extends StatelessWidget {
  final double height;
  final double width;
  final bool isLoader;

  const ProgressBar({
    Key? key,
    this.height = double.infinity,
    this.width = double.infinity,
    required this.isLoader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoader) {
      return Container(
        height: height,
        width: width,
        color: Colors.black45,
        child: Center(
          child: Card(
            color: Colors.white,
            elevation: 5,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(15)),
            ),
            child: Padding(
              padding:  EdgeInsets.all(25.0* 2),
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor:
                    AlwaysStoppedAnimation<Color>(HexColor("#5867DD")),
                backgroundColor:HexColor("#F5F6FF"),
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
