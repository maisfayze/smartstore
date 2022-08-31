import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/country.dart';
import '../../utils/Helpers.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> with Helpers {
  late TextEditingController _mobile;
  late TextEditingController _name;
  int? _selectedCountry;

  String? _gender = 'M';
  late TextEditingController _info;
  bool _obsecure = true;
  String? _MobileErorr;
  String? _infoErorr;
  String? _nameErorr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobile = TextEditingController();
    _info = TextEditingController();
    _name = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _info.dispose();
    _mobile.dispose();

    super.dispose();
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
      appBar: AppBar(

        title:  Text('Add Address',style: GoogleFonts.poppins(
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
            SizedBox(height: 30.h,),

            //name
            Text(' Full name * ',style: GoogleFonts.poppins(
                fontSize:20.sp,
                color: Color(0xFF7530FF),
                fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 10.h,),
            TextField(
              controller: _name,
              minLines: null,
              maxLines: null,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              expands: true,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: _nameErorr == null ? 75.h : 95.h,
                ),
                errorText: _nameErorr,
                hintText: 'Name',
                floatingLabelStyle: GoogleFonts.poppins(
                  fontSize: 16.sp,
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
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //info

            //Mobile
            SizedBox(height: 30.h,),
            Text(' Mobile * ',style: GoogleFonts.poppins(
                fontSize:20.sp,
                color: Color(0xFF7530FF),
                fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 10.h,),
            TextField(
              controller: _mobile,
              minLines: null,
              maxLines: null,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.phone,
              expands: true,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  maxHeight: _MobileErorr == null ? 75.h : 95.h,
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

            //country
            SizedBox(height: 30.h,),

            Text(
              'Country',
          style: GoogleFonts.poppins(
                fontSize:20.sp,
                color: Color(0xFF7530FF),
                fontWeight: FontWeight.bold

            ),
            ),
            DropdownButton<int>(
              isExpanded: true,
              hint: Text('Select Country'),
              borderRadius: BorderRadius.circular(10),
              dropdownColor: Colors.amber[100],
              itemHeight: 48,
              focusColor: Colors.pink,
              underline: Divider(
                color: Colors.pink,
                height: 0.h,
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


            SizedBox(height: 45.h,),

            ElevatedButton(
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
            SizedBox(height: 53.h,),
          ],
        ),
      ),
    );
  }
  void performSignUp() {
    if (checkData()) {
      Submit();
    }
  }
  bool checkData() {
    if (_mobile.text.isNotEmpty && _info.text.isNotEmpty && _name.text.isNotEmpty ) {
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
      _infoErorr = _info.text.isEmpty ? 'Enter description' : null;
      _nameErorr = _info.text.isEmpty ? 'Enter name' : null;
    },
    );
  }
  void Submit() {
    Navigator.pushReplacementNamed(context, '');
  }

  }

