import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/widgets/otp.dart';

import '../utils/Helpers.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen>  with Helpers {
  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  late TextEditingController _one;
  late TextEditingController _two;
  late TextEditingController _three;
  late TextEditingController _four ;

  String? _oneErorr;
  String? _twoErorr;
  String? _threeErorr;
  String? _fourErorr;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    _one = TextEditingController();
    _two = TextEditingController();
    _three = TextEditingController();
    _four = TextEditingController();
  }

  @override
  void dispose() {
    _one.dispose();
    _two.dispose();
    _three.dispose();
    _four.dispose();
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin1FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
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
                  height: 240,
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
                        height: 45,
                      ),

                      SizedBox(
                        height: 12,
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text('Enter code',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Enter the code we just sent',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // OtpCode(),
                  // OtpCode(),
                  // OtpCode(),
                  // OtpCode(),
                  //no1
                  SizedBox(
                    width: 70,
                    child: TextField(
                      controller: _one,
                      focusNode: pin1FocusNode,
                      autofocus: true,
                      obscureText: true,
                      style: TextStyle(fontSize: 24),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        errorText: _oneErorr,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xFF7530FF), width: 3),
                        ),
                      ),
                      onChanged: (value) {
                        nextField(value, pin2FocusNode);
                      },
                    ),
                  ),
                  //two
                  SizedBox(
                    width: 70,
                    child: TextField(
                      controller: _two,
                      focusNode: pin2FocusNode,
                      autofocus: true,
                      obscureText: true,
                      style: TextStyle(fontSize: 24),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        errorText: _twoErorr,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xFF7530FF), width: 3),
                        ),
                      ),
                      onChanged: (value) {
                        nextField(value, pin3FocusNode);
                      },
                    ),
                  ),
                  //three
                  SizedBox(
                    width: 70,
                    child: TextField(
                      controller: _three,
                      focusNode: pin3FocusNode,
                      autofocus: true,
                      obscureText: true,
                      style: TextStyle(fontSize: 24),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        errorText: _threeErorr,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xFF7530FF), width: 3),
                        ),
                      ),
                      onChanged: (value) {
                        nextField(value, pin4FocusNode);
                      },
                    ),
                  ),
                  //four
                  SizedBox(
                    width: 70,
                    child: TextField(
                      controller: _four,
                      focusNode: pin4FocusNode,
                      autofocus: true,
                      obscureText: true,
                      style: TextStyle(fontSize: 24),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        errorText: _fourErorr,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black54, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xFF7530FF), width: 3),
                        ),
                      ),
                      onChanged: (value) {
                        pin4FocusNode!.unfocus();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ResetPassword');
                    },
                    child: Text(
                      ' Reset Password ?',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7530FF),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Color(0xFF7530FF),
                  minimumSize: Size(double.infinity, 60),
                ),
                onPressed: () {
                  performLogin();
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ' ');
                    },
                    child: Text(
                      ' Didin\'t recive any code ?',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7530FF),
                      ),
                    )),
              ),
            ),
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
    if (_one.text.isNotEmpty &&
        _two.text.isNotEmpty &&
       _three.text.isNotEmpty  &&
       _four.text.isNotEmpty ) {
      _controlErrorValue();
      return true;
    }
    _controlErrorValue();
    showSnackBar(context, message: 'Error,enter required data',erorr: true);

    return false;
  }

  void _controlErrorValue() {
    setState(
      () {
        _oneErorr =_one.text.isEmpty ?  'Error'  : null;
        _twoErorr =_two.text.isEmpty ? 'Error'     : null;
      _threeErorr =_three.text.isEmpty ? 'Error'  : null;
       _fourErorr =_four.text.isEmpty ? 'Error'     : null;
      },
    );
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/LoginScreen');
  }
}
