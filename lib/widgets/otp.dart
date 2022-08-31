import 'package:flutter/material.dart';
class OtpCode extends StatelessWidget {
  const OtpCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: 70,
      child: TextField(

        autofocus: true,
        obscureText: true,
        style: TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration:  InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(
            vertical:15,
          ),
          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color:Colors.black54,
                width: 3

            ),
          ),
          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color:Colors.black54,
                width: 3

            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color:Color(0xFF7530FF),
                width: 3
            ),
          ),

        ),

        onChanged: (value) {
          // nextField(value, pin2FocusNode);
        },
      ),
    );
  }
}