import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CardPayment extends StatefulWidget {
  const CardPayment({Key? key}) : super(key: key);

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  String cardNumber ='3546 7532 XXXX 9742';
           String cardExpiration= "08/2023";
            String cardHolder= "MAIS FAYZE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title:  Text('online Payment ',style: GoogleFonts.poppins(
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(


          children:[
            SizedBox(height: 20.h,),
            _buildCreditCard(
                color: Color(0xFF090943),
                cardExpiration: cardExpiration,
                cardHolder:   cardHolder,
                cardNumber: cardNumber),
            SizedBox(
              height: 15,
            ),
            TextField(

              obscureText: true,
             onChanged: (String value){
               setState(()=> cardNumber=value);
             },
              // minLines: null,
              // maxLines: null,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: 75.h ,
                ),
                 labelText: 'Number',

                hintText: 'Number',
                floatingLabelStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Color(0xFF7530FF),
                    width: 1,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintMaxLines: 1,
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 15.h,),

            Row(
              children: [
                TextField(
                  obscureText: true,
                  onChanged: (String value){
                    setState(()=> cardExpiration=value);
                  },
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.datetime,

                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxHeight: 75.h ,
                      maxWidth: 165.w,
                    ),
labelText: 'Expired Data',
                    hintText: 'Expired Data',
                    floatingLabelStyle: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Color(0xFF7530FF),
                        width: 1,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintMaxLines: 1,
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              Spacer(),
                // SizedBox(width: 20.w,),
                TextField(
                  obscureText: true,
                  // minLines: null,
                  // maxLines: null,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxHeight: 75.h ,
                      maxWidth: 165.w
                    ),
labelText: 'VCC',
                    hintText: 'VCC',
                    floatingLabelStyle: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Color(0xFF7530FF),
                        width: 1,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintMaxLines: 1,
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextField(

              onChanged: (String value){
                setState(()=> cardHolder=value);
              },
              textCapitalization: TextCapitalization.characters,
              // minLines: null,
              // maxLines: null,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,

              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: 75.h ,
                ),
labelText: 'Card Holder',
                hintText: 'Card Holder',
                floatingLabelStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Color(0xFF7530FF),
                    width: 1,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintMaxLines: 1,
                hintStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h,),

            Padding(
              padding:EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color(0xFFE9E9EC),
                      minimumSize: Size(30.w, 60.h),

                    ),
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7530FF),
                      ),
                    ),
                  ),
                  ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color(0xFFE9E9EC),
                      minimumSize: Size(30.w, 60.h),

                    ),
                    onPressed: () {},
                    child: Text(
                      'Delete',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: Color(0xFF7530FF),
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ),


                  ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color(0xFFE9E9EC),
                      minimumSize: Size(30.w, 60.h),

                    ),
                    onPressed: () {},
                    child: Text(
                      'Add new card',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: Color(0xFF7530FF),
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: const Color(0xFF7530FF),
                  minimumSize: Size(30.w, 60.h),

                ),
                onPressed: () {},
                child: Text(
                  'Validate',
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );

  }




































  // Build the credit card widget
  Card _buildCreditCard(
      { required Color color,
        required String cardNumber,
        required String cardHolder,
        required String cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  "images/contact_less.png",
                  height: 20,
                  width: 18,
                ),
                Image.asset(
                  "images/mastercard.png",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '$cardNumber',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                  label: 'CARDHOLDER',
                  value: cardHolder,
                ),
                _buildDetailsBlock(label: 'VALID THRU', value: cardExpiration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
              color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
