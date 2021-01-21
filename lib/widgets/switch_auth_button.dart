import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:void_chat_beta/constants/constants.dart';

class SwitchAuthButton extends StatelessWidget {
  const SwitchAuthButton({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 2),
        Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: kMainBgColor,
          loop: 0,
          period: Duration(milliseconds: 4000),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 10),
              Transform.translate(
                offset: Offset(0.0, 1.5),
                child: Transform(
                  transform: Matrix4.diagonal3Values(1, 0.85, 1.2),
                  child: Icon(
                    Icons.double_arrow,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}