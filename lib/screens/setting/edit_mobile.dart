import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/Helpers.dart';
class EditMobile extends StatefulWidget {
  const EditMobile({Key? key}) : super(key: key);

  @override
  State<EditMobile> createState() => _EditMobileState();
}

class _EditMobileState extends State<EditMobile> with Helpers{
  final countryPicker =FlCountryCodePicker() ;
  late TextEditingController _mobile;
  CountryCode? countryCode ;
  String?  _MobileErorr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobile=TextEditingController();


  }
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/loginandsignin.png',
                  height: 250,
                  width: 400,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 79),
                        child: CircleAvatar(
                          backgroundColor: Colors.black87,
                          radius: 58,
                          child: Image.asset('images/avatar1.png'),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Edit Mobile Phone',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        'Please enter your new phone number',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 36,
                        ),
                        child: TextField(
                          controller: _mobile,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.phone,
                          maxLines: 1,

                          decoration: InputDecoration(
                            labelText: 'Enter your phone number',
                            labelStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400,
                            ),

                            constraints: BoxConstraints(

                              maxHeight: 65,
                            ),
                            errorText: _MobileErorr,
                            // hintText: 'Mobile Number',
                            floatingLabelStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            floatingLabelAlignment: FloatingLabelAlignment.start,


                            prefixIcon: Container(

                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child:Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap: ()async{
                                      final code =await countryPicker.showPicker(context: context);
                                      setState(()=>
                                      countryCode=code
                                      );

                                    },
                                    child: Row(

                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: countryCode!=null? countryCode!.flagImage :null,
                                        ),
                                        SizedBox(width: 10,),
                                        Container(
                                          child: Text(countryCode?.dialCode ?? '+1',style: GoogleFonts.poppins(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18

                                          ),),

                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xFF7530FF),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.black12,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xFF7530FF),
                                width: 1,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintMaxLines: 1,
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),



                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  primary:Color(0xFF7530FF),

                  minimumSize: Size(double.infinity, 60),
                ),
                onPressed: (){
                  if(countryCode!=null){
                    performSubmit();
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: const Text('Error enter required country code'),
                        backgroundColor: Colors.red,
                        duration: const Duration(seconds: 3),
                        dismissDirection: DismissDirection.horizontal,
                      ),
                    );
                  }
                },

                child: Text('Submit',style:GoogleFonts.poppins(
                  fontSize: 20,
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


  void performSubmit() {
    if (checkData()) {
      submit();
    }
  }
  bool checkData() {
    if (_mobile.text.isNotEmpty && countryCode!=null) {
      _controlErrorValue();
      return true;
    }
    _controlErrorValue();
    showSnackBar(context, message: 'Error,enter required data',erorr: true);

    return false;
  }
  void _controlErrorValue() {
    setState(() {
      _MobileErorr = _mobile.text.isEmpty ? 'Enter Mobile number' : null;
    },
    );
  }
  void  submit(){
    Navigator.pushNamed(context, '/VerificationScreen');
  }
}
