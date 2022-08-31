import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/widgets/setting_item.dart';
class CartSubmitted extends StatelessWidget {
  const CartSubmitted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(

        title:  Text('Cart Sumbit',style: GoogleFonts.poppins(
          fontSize: 24.sp,
          color: Colors.black,
        ),),
        leading:
        IconButton(onPressed: () {
          Navigator.pop(context);

        }, icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top:10),
            child: CircleAvatar(

              backgroundColor: Colors.black87,
              radius: 42,
              child: Image.asset('images/avatar1.png'),
            ),
          ),
        ],

      ),

      body:Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.h),
        child: ListView(

          children: [
            SettingItem(title: 'Select Address', icon: Icons.location_on_outlined,nav:'/AddressScreen',onActionPressed: (){}),
            SettingItem(title: 'Select payment type', icon: Icons.payment_rounded,nav:'/CardPayment',onActionPressed: (){}),


            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: const Color(0xFF7530FF),
                  minimumSize: Size(double.infinity, 60.h),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 53.h,),
          ],
        ),
      ) ,
    );
  }
}
