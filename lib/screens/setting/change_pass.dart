import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/utils/Helpers.dart';
class ChangePass extends StatefulWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> with Helpers {
  String? _passwordErorr;
  String? _rePasswordErorr;
  late TextEditingController _password;
  late TextEditingController _rePassword;
  bool _obsecure =true;
  bool _notifications = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _rePassword=TextEditingController();
    _password=TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _password.dispose();
    _rePassword.dispose();
    super.dispose();
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
                      Text('Change password',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Please set a new password',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  TextField(
                    obscureText: _obsecure,
                    controller: _password,
                    minLines: 1,
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputAction: TextInputAction.done,
                    expands: false,
                    decoration: InputDecoration(
                      errorText: _passwordErorr ,
                      constraints: BoxConstraints(
                        maxHeight: _passwordErorr ==null ?60:85,
                        minHeight: 60,
                      ),
                      hintText: ' Old Password',

                      floatingLabelStyle: GoogleFonts.poppins(
                        fontSize: 16,
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
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    obscureText: _obsecure,
                    controller: _password,
                    minLines: 1,
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputAction: TextInputAction.done,
                    expands: false,
                    decoration: InputDecoration(
                      errorText: _passwordErorr ,
                      constraints: BoxConstraints(
                        maxHeight: _passwordErorr ==null ?60:85,
                        minHeight: 60,
                      ),
                      hintText: 'Password',

                      floatingLabelStyle: GoogleFonts.poppins(
                        fontSize: 16,
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
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    obscureText: _obsecure,
                    controller: _rePassword,
                    minLines: 1,
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputAction: TextInputAction.done,
                    expands: false,
                    decoration: InputDecoration(
                      errorText: _rePasswordErorr ,
                      constraints: BoxConstraints(
                        maxHeight: _passwordErorr ==null ? 85:60,
                        minHeight: 60,
                      ),
                      hintText: 'Re-type Password',

                      floatingLabelStyle: GoogleFonts.poppins(
                        fontSize: 16,
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
                  ),
                ],
              ),
            ),
            // SizedBox(height:10,),

            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36,),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  primary:  Color(0xFF7530FF),

                  minimumSize: Size(double.infinity, 60),
                ),
                onPressed: (){

                  performLogin();
                }, child: Text('Confirm',style:GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),

              ),
              ),
            ),
            SizedBox(height: 50,),


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
    if (_rePassword.text.isNotEmpty && _password.text.isNotEmpty) {
      _controlErrorValue();
      return true;
    }
    _controlErrorValue();
    showSnackBar(context, message: 'Error,enter required data',erorr: true);

    return false;
  }
  void _controlErrorValue() {
    setState(() {
      // _rePassword.text != _password.text  ?'the password must equal ':null;
      _rePasswordErorr= _rePassword.text.isEmpty ? 'Enter password again ' : null;
      _passwordErorr = _password.text.isEmpty ? 'Enter password' : null;

    },
    );
  }
  void login() {
    if(_rePassword.text!= _password.text){
      showSnackBar(context, message: 'The password does not match ',erorr: true);

    }else{
      Navigator.pushNamed(context, '/VerificationScreen');
    }}
}
