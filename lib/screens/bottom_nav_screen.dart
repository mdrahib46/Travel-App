import 'package:flutter/material.dart';
import 'package:travelapp/screens/hotel_book.dart';
import 'package:travelapp/screens/search_fligiht.dart';

import 'book_flight.dart';


class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int _selectedIndex = 0;
  List<Widget> screens = const [
    SearchFligiht(),
    BookFlight(),
    HotelBookScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
          print(_selectedIndex);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.flight_rounded), label: 'Flight'),
          NavigationDestination(
              icon: Icon(Icons.home_work_sharp), label: 'Hotels'),
        ],
      ),
    );
  }
}
