
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/utils/Helpers.dart';

import '../model/country.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Helpers {
  late TextEditingController _mobile;
  late TextEditingController _name;

  int? _selectedCountry;

  String? _gender='M';
  late TextEditingController _password;
  bool _obsecure = true;
  String? _MobileErorr;
  String? _passwordErorr;
  String? _nameErorr;
  late TapGestureRecognizer _tapGestureRecognizer;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobile = TextEditingController();
    _password = TextEditingController();
    _name = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = dologin;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _password.dispose();
    _mobile.dispose();

    super.dispose();
  }

  void dologin() {
    print('login successfull');
    Navigator.pushNamed(context, '/LoginScreen');
  }
  List<Country> _countries = <Country>[
    Country(id: 1, title: 'Palestine'),
    Country(id: 2, title: 'Egypt'),
    Country(id: 3, title: 'Jorden'),
    Country(id: 4, title: 'Morroco'),
    Country(id: 5, title: 'iraq'),
    Country(id: 6, title: 'india'),
    Country(id: 7, title: 'Russia'),
    Country(id: 8, title: 'lebonon'),
    Country(id: 9, title: 'Canda'),
    Country(id: 10, title: 'Germany'),
    Country(id: 11, title: 'Kuwait'),
    Country(id: 12, title: 'Afghanistan'),
    Country(id: 13, title: 'USA'),
    Country(id: 14, title: 'UAE'),
    Country(id: 15, title: 'Syria'),
  ];
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
                        child: Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFF2D2E49),
                              radius: 58,
                            ),
                            Container(

                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(bottom: 29),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFF2D2E49),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 1,
                                    )
                                  ]),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text('Sign up',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Hey! Welcome to Wearly',
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
            //name
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: TextField(
                controller: _name,
                minLines: null,
                maxLines: null,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                expands: true,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: _nameErorr == null ? 60 : 85,
                  ),
                  errorText: _nameErorr,
                  hintText: 'Name',
                  floatingLabelStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  prefixIcon: Icon(Icons.perm_identity_sharp),
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
            ),
            //password
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: TextField(
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
                  errorText: _passwordErorr,
                  constraints: BoxConstraints(
                    maxHeight: _passwordErorr == null ? 60 : 85,
                    minHeight: 60,
                  ),
                  hintText: 'Password',
                  floatingLabelStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() => _obsecure = !_obsecure);
                    },
                    icon: Icon(_obsecure
                        ? Icons.visibility_sharp
                        : Icons.visibility_off),
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
            ),
            //Mobile
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
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
                    maxHeight: _MobileErorr == null ? 60 : 85,
                  ),
                  errorText: _MobileErorr,
                  hintText: 'Mobile Number',
                  floatingLabelStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  prefixIcon: Icon(Icons.phone_android),
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
            ),

            //country
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Text(
                'Country',
                style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: DropdownButton<int>(
                isExpanded: true,
                hint: Text('Select Country'),
                borderRadius: BorderRadius.circular(10),
                dropdownColor: Colors.teal.shade100,

                itemHeight: 48,
                focusColor: Colors.pink,
                underline: Divider(
                  color: Colors.pink,
                  height: 0,
                ),
                elevation: 20,
                value: _selectedCountry,
                items: _countries
                    .map((Country) => DropdownMenuItem<int>(
                  child: Text(Country.title),
                  value: Country.id,
                ))
                    .toList(),
                onChanged: (int? value) {
                  setState(() => _selectedCountry = value);
                },
              ),
            ),
            SizedBox(height: 20),
         //Gender
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Text(
                'Gender ',
                style: GoogleFonts.almarai(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text(' Male'),
                      value: 'M',
                      groupValue: _gender,
                      onChanged: (String? value) {
                        setState(() => _gender = value);
                      },
                    ),
                  ),
                  Expanded(

                    child: RadioListTile<String>(
                        title: Text(' female'),
                        value: 'f',
                        groupValue: _gender,
                        onChanged: (String? value) {
                          setState(() => _gender = value);
                        }),
                  ),
                ],
              ),
            ),

            SizedBox(height: 44,),
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
                  performSignUp();
                }, child: Text('SignUp',style:GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),

              ),
              ),
            ),

            const SizedBox(height: 10,),
            Center(
              // alignment: AlignmentDirectional.center,
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account?',
                    style: GoogleFonts.nunito(
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(text :'  '),
                      TextSpan(text :'Login !',
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
            SizedBox(height: 53,),
          ],
        ),
      ),
    );
  }
  void performSignUp() {
    if (checkData()) {
      SignUp();
    }
  }
  bool checkData() {
    if (_mobile.text.isNotEmpty && _password.text.isNotEmpty && _name.text.isNotEmpty ) {
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
      _nameErorr = _password.text.isEmpty ? 'Enter name' : null;
    },
    );
  }
  void SignUp() {
    Navigator.pushReplacementNamed(context, '');
  }
}
