import 'package:cleaner/screens/PaymentPage.dart';
import 'package:cleaner/screens/ProfilePage.dart';
import 'package:cleaner/screens/ReviewPage.dart';
import 'package:cleaner/screens/ServicePage.dart';
import 'package:flutter/material.dart';

class BookNow extends StatefulWidget {
  const BookNow({super.key});

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  int _index = 0;
  final screens = [
    ServicePage(),
    PaymentPage(),
    ReviewPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: const Text("Cleaner\n\nBook Now"),
        automaticallyImplyLeading: false,
      ),
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        backgroundColor: const Color(0XFF0BAC25),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
              color: Colors.black,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cleaning_services_rounded,
              color: Colors.black,
              size: 30,
            ),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payments,
              color: Colors.black,
              size: 30,
            ),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.rate_review_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Review',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Color(0XFFC81D1D),
      ),
    );
  }
}
