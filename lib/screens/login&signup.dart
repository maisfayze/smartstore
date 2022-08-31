import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogAndSign extends StatelessWidget {
  const LogAndSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'images/loginandsignin.png',
              height: 200,
            ),
            SizedBox(
              height: 80,
            ),
            Image.asset(
              'images/logo (2).png',
              height: 93,
              width: 174,
            ),
            SizedBox(height: 132,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  primary:  Color(0xFF7530FF),

                  minimumSize: Size(double.infinity, 60),
                ),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/LoginScreen');
                }, child: Text('Login',style:GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),

              ),
              ),
            ),
            SizedBox(height: 37,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  primary:  Color(0xFFE9E9EC),

                  minimumSize: Size(double.infinity, 60),
                ),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/RegisterScreen');
                }, child: Text('Signup',style:GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2D2E49),


              ),

              ),
              ),
            ),
            SizedBox(height:45,),
          ],

        ),
      ),
    );
  }
}
