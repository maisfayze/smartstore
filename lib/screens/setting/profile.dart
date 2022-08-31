import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/country.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int? _selectedCountry;
  String? _gender='M';
  bool _obsecure = true;

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
          height: 260.h,
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
                  child: Stack(
                      children: [
                        Image.asset('images/avatar1.png'),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color:   Colors.white,
                              ),
                              color:   Color(0xFF7530FF),
                            ),
                          child:Icon(Icons.edit,color: Colors.white,),
                          ),
                        ),
                      ],
                      ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text('Edward Parker ',
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 12.h,
              ),

            ],
          ),
        ),
        ],
      ),
            //first Name
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: TextField(

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
                    maxHeight: 60 ,
                  ),

                  hintText: 'First Name',
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

            //last  Name
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: TextField(

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
                    maxHeight: 60 ,
                  ),

                  hintText: 'Last Name',
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
            //email address
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: TextField(

                minLines: null,
                maxLines: null,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                expands: true,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxHeight: 60 ,
                  ),

                  hintText: 'Email Address',
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
                  Navigator.pushReplacementNamed(context, '/LoginScreen');
                }, child: Text('Update Profile',style:GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),

              ),
              ),
            ),
            SizedBox(height: 30.h,),
    ],

        ),
    ),


    );
  }
}
