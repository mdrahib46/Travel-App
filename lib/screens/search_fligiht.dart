import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelapp/screens/book_flight.dart';

class SearchFligiht extends StatefulWidget {
  const SearchFligiht({super.key});

  @override
  State<SearchFligiht> createState() => _SearchFligihtState();
}

class _SearchFligihtState extends State<SearchFligiht> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAppbar(context),
                const SizedBox(height: 30),
                Text(
                  'Where you want to \ngo?',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search a flight',
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Upcoming Trips',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 10),
                Card(
                  color: const Color.fromRGBO(28, 94, 133, 100),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              '10 May, 12:30 pm',
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              '11 May, 08:15 am',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'DAC',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ". . . .",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.flight_takeoff_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              ". . . .",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'DXB',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            _buildLocationNameCard(
                                airportName: 'Dhaka, Airport'),
                            const Spacer(),
                            _buildLocationNameCard(
                                airportName: 'Dubai, Airport'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Popular Destinations',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildPopularCityCard(
                          imgPath: "img1.png",
                          cityName: 'Rome',
                          countryName: 'Italy'),
                      _buildPopularCityCard(
                          imgPath: "img2.png",
                          cityName: 'Istanbul',
                          countryName: 'Turkey'),
                      _buildPopularCityCard(
                          imgPath: "img3.png",
                          cityName: 'Paris',
                          countryName: 'France'),
                    ],
                  ),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),

    );
  }

  Widget _buildPopularCityCard({
    required String imgPath,
    required String cityName,
    required String countryName,
  }) {
    const String _basePath = "assets/images";
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              '$_basePath/$imgPath',
            ),
            fit: BoxFit.fill,
            height: 120,
            width: 110,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  countryName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationNameCard({required String airportName}) {
    return Card(
      color: const Color.fromRGBO(63, 126, 164, 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: Text(
          airportName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.9,
          ),
        ),
      ),
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          child: Image(
            image: AssetImage('assets/images/profile.png'),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lady John Doe",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "ladyjohn@gmail.com",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.2),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 26,
            ))
      ],
    );
  }
}
