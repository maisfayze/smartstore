import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: Color(0xFF2D2E49),
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
          ),
        ),
        Spacer(),
        TextButton(
            onPressed: onPressed,
            child: Text(
              'see All',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,

                color: Color(0xFF7530FF),
              ),
            )),
      ],
    );
  }
}
