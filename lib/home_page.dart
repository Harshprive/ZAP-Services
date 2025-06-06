import 'package:flutter/material.dart';
import 'package:zap_services/booking.dart';

import 'package:zap_services/cleaning_page.dart';
import 'package:zap_services/issue.dart';
import 'package:zap_services/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;

  // List of widgets for Bottom Navigation bar screens
  List<Widget> widgetList = const [
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Bookings', style: TextStyle(fontSize: 40)),
    Text('Categories', style: TextStyle(fontSize: 40)),
    Text('Chat', style: TextStyle(fontSize: 40)),
    Text('Profile', style: TextStyle(fontSize: 40)),
  ];

  // List of image paths
  // List<Map<String, String>> imageList = [
  //   {'image_path': 'assets/sofaone.png'},
  //   {'image_path': 'assets/sofatwo.png'},
  //   {'image_path': 'assets/sofathree.png'},
  //   {'image_path': 'assets/sofafour.png'},
  // ];

  // final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF4F23B8), // Top color
                Colors.white, // Bottom color
              ],
            ),
          ),
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Taj Nagar',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.person, color: Colors.grey, size: 30),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Vishwakarma Nagar, Welekar Nagar..',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: 'Search cleaning',
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            suffixIcon: Icon(Icons.keyboard_voice_outlined),
                            suffixStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 60.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zap services',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Arriving services',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                          ),
                          //SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/services.PNG',
                                width: 90,
                                height: 90,
                              ),
                              SizedBox(width: 12),
                              Image.asset(
                                'assets/services.PNG',
                                width: 90,
                                height: 90,
                              ),
                              SizedBox(width: 12),
                              Image.asset(
                                'assets/services.PNG',
                                width: 90,
                                height: 90,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height: 10.0),
                  SizedBox(
                    height: 278.0,
                    child: Card(
                      margin: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Our services',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Avail one or multiple services in your booking',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        154,
                                        162,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/airconditioner.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'AC Cool',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (_) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        69,
                                        196,
                                        176,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/cooking.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Cooking',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        209,
                                        102,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/painter.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Painter',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        184,
                                        233,
                                        134,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/plumbing.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Plumber',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (_) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        195,
                                        160,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/airconditioner.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'AC Cool',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,

                                        160,
                                        255,
                                        195,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/cooking.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Cooking',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        223,
                                        211,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/painter.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Painter',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        69,
                                        196,
                                        176,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/plumbing.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Plumber',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(height: 10.0),
                  SizedBox(
                    height: 200.0,
                    child: Card(
                      margin: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recommendation',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'These are the most booking services',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        184,
                                        233,
                                        134,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/airconditioner.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'AC Cool',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        195,
                                        170,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/cooking.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Cooking',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        170,
                                        196,
                                        255,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/painter.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Painter',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => const CleaningPage(
                                              showSidebar: true,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        223,
                                        211,
                                        211,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/plumbing.png',
                                          height: 45,
                                          color: Colors.black,
                                        ),
                                        const Text(
                                          'Plumber',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 233, 230, 238),
            ],
            tileMode: TileMode.clamp,
          ),
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: 46,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconBottomBar(
                  text: 'Home',
                  icon: Icons.home,
                  color: const Color.fromARGB(255, 192, 192, 193),
                  selected: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                ),
                IconBottomBar(
                  text: 'Booking',
                  icon: Icons.book_online_outlined,
                  color: const Color.fromARGB(255, 192, 192, 193),
                  selected: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Booking()),
                    );
                  },
                ),

                IconBottomBar(
                  text: 'Chat',
                  icon: Icons.messenger_outline,
                  color: const Color.fromARGB(255, 192, 192, 193),
                  selected: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Issue()),
                    );
                  },
                ),
                IconBottomBar(
                  text: 'Profile',
                  icon: Icons.person,
                  color: const Color.fromARGB(255, 192, 192, 193),
                  selected: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final VoidCallback onPressed;
  final Color color;

  const IconBottomBar({
    super.key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 25, color: selected ? color : Colors.grey),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.0,
              height: 1.2,
              color: selected ? color : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
