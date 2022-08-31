import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/utils/Helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _mobile;
  late TextEditingController _password;
  bool _obsecure =true;
  String?  _MobileErorr;
  String? _passwordErorr;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobile=TextEditingController();
    _password=TextEditingController();
    _tapGestureRecognizer =TapGestureRecognizer()..onTap = createNewAccountAction;

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _password.dispose();
    _mobile.dispose();

    super.dispose();
  }
  void createNewAccountAction(){
    print('createNewAccountAction');
    Navigator.pushNamed(context, '/RegisterScreen');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/loginandsignin.png',
                  height: 250.h,
                  width: 400.w,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 79.h),
                        child: CircleAvatar(
                          backgroundColor: Colors.black87,
                          radius: 58,
                          child: Image.asset('images/avatar1.png'),
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      Text('Login',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        'Hey! Welcom back',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 64.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.w,
              ),
              child: TextField(
                controller: _mobile,
                minLines: null,
                maxLines: null,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                expands: true,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: _MobileErorr ==null ?70.h:95.h,
                  ),
                  errorText: _MobileErorr,
                  hintText: 'Mobile Number',
                  floatingLabelStyle: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  prefixIcon: Icon(Icons.phone_android),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFF7530FF),
                      width: 1.w,
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
            ),
            SizedBox(height: 35.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 36.w),
              child: TextField(
                obscureText: _obsecure,
                controller: _password,
                minLines: 1,
                maxLines: 1,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                textInputAction: TextInputAction.done,
                expands: false,
                decoration: InputDecoration(
                  errorText: _passwordErorr ,
                  constraints: BoxConstraints(
                    maxHeight: _passwordErorr ==null ?75.h:95.h,
                    minHeight: 60.h,
                  ),
                  hintText: 'Password',

                  floatingLabelStyle: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),

                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  prefixIcon: Icon(  Icons.lock_outline ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(()=>
                      _obsecure=!_obsecure);
                    },
                    icon: Icon( _obsecure ? Icons.visibility_sharp:Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFF7530FF),
                      width: 1.w,
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

            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 36.w),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/ForgotScreen ');
                    }, child: Text(
                  'ForgetPassword ?',style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7530FF),
                ),)),
              ),
            ),
            SizedBox(height: 23.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 36.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  primary:  Color(0xFF7530FF),

                  minimumSize: Size(double.infinity, 60.h),
                ),
                onPressed: (){
                  performLogin();
                }, child: Text('Login',style:GoogleFonts.poppins(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),

              ),
              ),
            ),

            SizedBox(height: 10.h,),
            Center(
              // alignment: AlignmentDirectional.center,
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account',
                    style: GoogleFonts.nunito(
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(text :'  '),
                      TextSpan(text :'Create Now !',
                        recognizer:_tapGestureRecognizer ,
                        style: GoogleFonts.poppins(
                          color: Color(0xFF7530FF),
                          fontWeight: FontWeight.bold,
                          decorationStyle: TextDecorationStyle.solid,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ]
                ),


              ),
            ),
            SizedBox(height: 53.h,),
          ],
        ),
      ),
    );
  }


  void performLogin() {
    if (checkData()) {
      login();
    }
  }
  bool checkData() {
    if (_mobile.text.isNotEmpty && _password.text.isNotEmpty) {
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
      _passwordErorr = _password.text.isEmpty ? 'Enter password' : null;
    },
    );
  }
  void login() {
    Navigator.pushNamed(context, '/BottomNavigationScreen');
  }
}

