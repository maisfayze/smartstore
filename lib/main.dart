import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/categories.dart';
import 'package:smart_store_1/screens/HomeScreen/cart_screen.dart';
import 'package:smart_store_1/screens/HomeScreen/cart_submit.dart';
import 'package:smart_store_1/screens/HomeScreen/categories.dart';
import 'package:smart_store_1/screens/HomeScreen/latest_product.dart';
import 'package:smart_store_1/screens/HomeScreen/product_may_like.dart';
import 'package:smart_store_1/screens/HomeScreen/product_screen.dart';
import 'package:smart_store_1/screens/HomeScreen/sub_categories.dart';
import 'package:smart_store_1/screens/btn/btn.dart';
import 'package:smart_store_1/screens/btn/favorite_screen.dart';
import 'package:smart_store_1/screens/btn/notification_screen.dart';
import 'package:smart_store_1/screens/forgot_password.dart';
import 'package:smart_store_1/screens/HomeScreen/homeScreen.dart';
import 'package:smart_store_1/screens/login&signup.dart';
import 'package:smart_store_1/screens/login_screen.dart';
import 'package:smart_store_1/screens/lunch_screen.dart';
import 'package:smart_store_1/screens/on_bording.dart';
import 'package:smart_store_1/screens/order_detail.dart';
import 'package:smart_store_1/screens/order_screen.dart';
import 'package:smart_store_1/screens/register_screen.dart';
import 'package:smart_store_1/screens/reset_password.dart';
import 'package:smart_store_1/screens/setting/about_screen.dart';
import 'package:smart_store_1/screens/setting/adress_screen.dart';
import 'package:smart_store_1/screens/setting/change_pass.dart';
import 'package:smart_store_1/screens/setting/contact_us.dart';
import 'package:smart_store_1/screens/setting/edit_mobile.dart';
import 'package:smart_store_1/screens/setting/faqs_screen.dart';
import 'package:smart_store_1/screens/setting/payment_card.dart';
import 'package:smart_store_1/screens/setting/profile.dart';
import 'package:smart_store_1/screens/setting/setting_screen.dart';
import 'package:smart_store_1/screens/verification.dart';

import 'package:smart_store_1/widgets/on_boarding_content.dart';

import 'screens/setting/add_adress_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      minTextAdapt: true,
      designSize: const Size(375,812),
      builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
             centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color:Colors.black),
            titleTextStyle: GoogleFonts.poppins(
              fontSize: 22.h,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
        Locale('en'),
          Locale('ar'),
        ],
locale: Locale('en'),



        initialRoute: '/lunch_screen',
        routes: {
          '/lunch_screen':(context) => const LunchScreen(),
          '/OnBoarding_Screen':(context) =>  const OnBoardingScreen(),
          '/LogAndSign':(context) => const LogAndSign(),
          '/OnBoardingScreen':(context) => const OnBoardingScreen(),
          '/LoginScreen':(context) => const LoginScreen(),
          '/RegisterScreen':(context) => const RegisterScreen(),
          '/ForgotScreen ':(context) => const ForgotScreen(),
          '/VerificationScreen':(context) => const VerificationScreen(),
          '/ResetPassword':(context) =>  const ResetPassword(),
          '/HomeScreen':(context) => const HomeScreen(),
          '/CategoriesList':(context) => const CategoriesList(),
          '/LatestProduct':(context)=> LatestProduct(),
          '/ProductMayLike':(context) => ProductMayLike(),
          '/BottomNavigationScreen':(context) => const BottomNavigationScreen(),
          '/Favorite' : (context) => const FavoriteScreen(),
          '/Notification ':(context) => const NotificationScreen(),
          '/SubCategories':(context) => const SubCategories(),
          '/ProductScreen':(context) =>  const ProductScreen(),
          '/AddressScreen':(context) =>   const AddressScreen(),
          '/AddAddressScreen':(context) => const AddAddressScreen(),
          '/CardPayment' :(context) =>  const CardPayment(),
          '/OrderScreen':(context) => const OrderScreen(),
          '/OrderDetail':(context)=>const OrderDetail(),
          '/NotificationScreen':(context) => const NotificationScreen(),
          '/SettingScreen':(context) =>  const SettingScreen(),
          '/Cart':(context) => const Cart(),
          '/CartSubmitted ':(context) => const CartSubmitted(),
          '/Profile':(context) => Profile(),
          '/EditMobile':(context) => EditMobile(),
          '/ChangePass':(context) => ChangePass(),
          '/FaqsScreen':(context) => const FaqsScreen(),
          '/AboutScreen':(context) => AboutScreen(),
          '/ContactUs':(context) => ContactUs(),
          '/AddAddressScreen':(context) =>  AddAddressScreen(),
        },
      );
    },);
  }
}
