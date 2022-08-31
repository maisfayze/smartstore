import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  String? _selected='1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title:  Text('Address',style: GoogleFonts.poppins(
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
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            SizedBox(height: 20.h,),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search,color: Color(0xFF9F9B9B),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),

                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.w,
                  ),
                ),
                hintStyle: GoogleFonts.poppins(
                    color: Color(0xFF9F9B9B)                ),
                hintText: 'Search here',),
            ),
            SizedBox(height: 21.h,),
           Container(
          height: 250.h,
          width:327.w,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,color: Colors.black26,offset: Offset(3,5),
              ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w , vertical: 20.h),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    ConstrainedBox(

                      constraints:BoxConstraints(
                        maxWidth: 25.w
                      ),
                      child: RadioListTile<String>(
                        activeColor: Colors.green,

                        value: '1',
                        groupValue: _selected,
                        onChanged: (String? value) {
                          setState(() => _selected = value);
                        },
                      ),
                    ),
                    Text(' Alwatan tower 400-100',style: GoogleFonts.poppins(
                      fontSize:18.sp,
              color: Color(0xFF7530FF),
                      fontWeight: FontWeight.bold

                    ),),
                  ],
                ),

                Text('Akshya Nagar 1st Block 1st Cross, Ramimurit \nnagar, Alwatan tower 400-100',style: GoogleFonts.poppins(
                  fontSize:16.sp,
                  color: Colors.black,

                ),),
                SizedBox(height: 10,),
                Text('+970 599-485-9638',style: GoogleFonts.poppins(
                  fontSize:16.sp,
                  color: Colors.black,

                ),),
              SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: const Color(0xFF7530FF),
                        minimumSize: Size(94.w, 36.h),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: const Color(0xFF7530FF),
                        minimumSize: Size(94.w, 36.h),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Delete',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
           ),
            SizedBox(height: 21.h,),
            Container(
              height: 250.h,
              width:327.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,color: Colors.black26,offset: Offset(3,5),
                  ),],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),

              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w , vertical: 20.h),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        ConstrainedBox(

                          constraints:BoxConstraints(
                              maxWidth: 25.w
                          ),
                          child: RadioListTile<String>(
                               activeColor: Colors.green,
                            value: '2',
                            groupValue: _selected,
                            onChanged: (String? value) {
                              setState(() => _selected = value);
                            },
                          ),
                        ),
                        Text(' Keshta tower 200-1',style: GoogleFonts.poppins(
                            fontSize:18.sp,
                            color: Color(0xFF7530FF),
                            fontWeight: FontWeight.bold

                        ),),
                      ],
                    ),

                    Text('Rafah,  at the end of George street \n nagar, Keshta tower 200-1',style: GoogleFonts.poppins(
                      fontSize:16.sp,
                      color: Colors.black,

                    ),),
                    SizedBox(height: 10.h,),
                    Text('+970 592-456-6213',style: GoogleFonts.poppins(
                      fontSize:16.sp,
                      color: Colors.black,

                    ),),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        // #FFBE00
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: const Color(0xFF7530FF),
                            minimumSize: Size(94.w, 36.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Edit',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: const Color(0xFF7530FF),
                            minimumSize: Size(94.w, 36.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Delete',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: const Color(0xFF7530FF),
                minimumSize: Size(double.infinity, 50.h),
              ),
              onPressed: () {
                Navigator.pushNamed(context,  '/AddAddressScreen');
              },
              child: Text(
                'Add a new Address',
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
