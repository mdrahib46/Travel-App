import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HotelBookScreen extends StatefulWidget {
  const HotelBookScreen({super.key});

  @override
  State<HotelBookScreen> createState() => _HotelBookScreenState();
}

class _HotelBookScreenState extends State<HotelBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/hotelbg.jpg'),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Book Your Hotel',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                      const SizedBox(height: 20),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.person),
                                    fillColor: Colors.blue.shade50,
                                    hintText: 'Guest Name'),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.phone),
                                    fillColor: Colors.blue.shade50,
                                    hintText: 'Contact'),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.contact_mail),
                                    fillColor: Colors.blue.shade50,
                                    hintText: 'NID Number'),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon:
                                        const Icon(Icons.edit_location_alt),
                                    fillColor: Colors.blue.shade50,
                                    hintText: 'Check In'),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                        Icons.wrong_location_rounded),
                                    fillColor: Colors.blue.shade50,
                                    label: const Text('Check Out')),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Confirm',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
