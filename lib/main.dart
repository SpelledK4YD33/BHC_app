import 'package:flutter/material.dart';
import 'landing_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'home_screen.dart';
import 'callcenter_screen.dart';
import 'faults_form_screen.dart';
import 'confirmation_screen.dart';
import 'inquiry_screen.dart';
import 'complaints_screen.dart';
import 'general_inquiry_screen.dart'; 
import 'apply_screen.dart';
import 'house_for_rent_screen.dart';
import 'house_for_sale_screen.dart';
import 'individual_lease_form_screen.dart';
import 'company_lease_form_screen.dart';
import 'sale_application_non_sitting_individual_screen.dart';
import 'sale_application_non_sitting_company_screen.dart';
import 'sale_application_sitting_individual_screen.dart';
import 'sale_application_sitting_company_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BHC App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingScreen(),
      routes: {
        '/signup': (context) => const SignUpScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/callcenter': (context) => const CallCenterScreen(),
        '/faultsform': (context) => const FaultsFormScreen(),
        '/confirmation': (context) => const ConfirmationScreen(),
        '/inquiry': (context) => const InquiryScreen(),
        '/complaints': (context) => const ComplaintsScreen(),
        '/generalinquiry': (context) => const GeneralInquiryScreen(),
        '/apply': (context) => const ApplyScreen(),  
        '/houseforrent': (context) => const HouseForRentScreen(),
        '/individualleaseform': (context) => const IndividualLeaseFormScreen(),
        '/houseForSale': (context) => const HouseForSaleScreen(),
        '/companyleaseform': (context) => const CompanyLeaseFormScreen(),
        '/saleApplicationNonSittingIndividual': (context) => const SaleApplicationNonSittingIndividualScreen(),
        '/saleApplicationNonSittingCompany': (context) => const SaleApplicationNonSittingCompanyScreen(),
        '/saleApplicationSittingIndividual': (context) => const SaleApplicationSittingIndividualScreen(),
        '/saleApplicationSittingCompany': (context) => const SaleApplicationSittingCompanyScreen(),
        
      },
    );
  }
}


 

