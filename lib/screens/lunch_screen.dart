import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context,'/OnBoardingScreen');
      // Navigator.pushReplacementNamed(context,     '/CartSubmitted ');
      // Navigator.pushReplacementNamed(context,'/ProductScreen');

    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:Center(child: Image.asset('images/logo (2).png',
          height: 93.h,
          width: 174.w,)),

      ),
    );
  }
}
