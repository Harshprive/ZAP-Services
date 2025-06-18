import 'package:flutter/material.dart';
import 'package:zap_services/completed_service.dart';
import 'package:zap_services/home_page.dart';
import 'package:zap_services/issue.dart';
import 'package:zap_services/profile.dart';
import 'package:zap_services/track.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  double ratingValue = 4.0;
  int myIndex = 0;
  // // new code
  // List of widgets for Bottom Navigation bar screens
  List<Widget> widgetList = const [
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Bookings', style: TextStyle(fontSize: 40)),
    //Text('Categories', style: TextStyle(fontSize: 40)),
    Text('Chat', style: TextStyle(fontSize: 40)),
    Text('Profile', style: TextStyle(fontSize: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Your Booking",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle change address
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurple[50],
                shape: const CircleBorder(), // ensures circular shape
                padding: EdgeInsets.zero, // removes extra padding
              ),
              child: const SizedBox(
                width: 36, // equal width and height for a circle
                height: 36,
                child: Center(
                  child: Text(
                    'H',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildFirstCard(),
            const SizedBox(height: 20),
            _buildSecondCard(),
            const SizedBox(height: 20),
            _buildThirdCardWithPin(),
          ],
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
                  text: 'Issue',
                  icon: Icons.messenger_outline_rounded,
                  color: const Color.fromARGB(255, 192, 192, 193),
                  selected: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Issue()),
                    );
                  },
                ),

                IconBottomBar(
                  text: 'Booking',
                  icon: Icons.book_online_outlined,
                  color: const Color.fromARGB(255, 192, 192, 193),
                  selected: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Booking()),
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

  // First Card
  Widget _buildFirstCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => const Track(), // Replace with your actual page
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.grey, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '14\n MAY',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cleaning',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                      const Text(
                        'Regular House',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text('Sumit Shende'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Thursday, 14',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Text(
                        'May 2025',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: const [
                          Text(
                            '02:00 PM 90 mins',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -8,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'IsProcessed',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Second Card
  Widget _buildSecondCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) =>
                    const CompletedService(), // Replace with your actual page
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.grey, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '14\n MAY',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cleaning',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        ),
                      ),
                      const Text(
                        'Regular House',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text('Sumit Shende'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Thursday, 14',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Text(
                        'May 2025',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 12),
                      // Row(
                      //   children: const [
                      //     // Correct icon
                      //     Text('02:00 pm 90 mins', style: TextStyle(fontSize: 8)),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -8,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Completed',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Third Card with Pin
  Widget _buildThirdCardWithPin() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.grey, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '14\n MAY',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cleaning',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      'Regular House',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text('Sumit Shende'),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Thursday, 29',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Text(
                      'May 2025',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 12),
                    // Row(
                    //   children: const [
                    //     // Correct icon
                    //     Text('02:00 pm 90 mins', style: TextStyle(fontSize: 8)),
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -8,
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 237, 124, 19),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'Schedule',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
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
