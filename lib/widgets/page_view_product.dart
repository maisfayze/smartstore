import 'package:flutter/material.dart';
class PageViewProduct extends StatelessWidget {
  const PageViewProduct({
    Key? key,
    required this.isCurrentPage,
  }) : super(key: key);
  final bool isCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: isCurrentPage?22 :12,
      width: isCurrentPage?22 :12,

      decoration: BoxDecoration(
          color:  Colors.white70,
          borderRadius: isCurrentPage?BorderRadius.circular(11) :BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: isCurrentPage? Colors.white70 :Colors.transparent,
            spreadRadius: 2,
              offset: Offset(0,0),
              blurStyle: BlurStyle.normal,

            )
          ]

      ),
    );
  }
}