import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zap_services/booking.dart';
import 'package:zap_services/home_page.dart';
import 'package:zap_services/profile.dart';

class Issue extends StatefulWidget {
  const Issue({super.key});

  @override
  State<Issue> createState() => _IssueState();
}

class _IssueState extends State<Issue> {
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
            const Expanded(
              child: Text(
                "Your Issue",
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
            _buildSecondCard(ratingValue),
            const SizedBox(height: 200),
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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.red, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset('assets/message.PNG', width: 80, height: 80),
                const SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My Washroom floor was leakage',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Send request to a particular service provider',
                      style: TextStyle(fontSize: 12),
                    ),
                    Image.asset('assets/issues.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -10,
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Submitted',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  // Second Card
  Widget _buildSecondCard(double rating) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.red, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset('assets/message.PNG', width: 80, height: 80),
                const SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My Washroom floor was leakage',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Send request to a particular service provider',
                      style: TextStyle(fontSize: 12),
                    ),
                    Image.asset('assets/issues.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -10,
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Allocated',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ),

        Positioned(
          bottom: -87,
          right: 15,
          child: Transform.rotate(
            angle: -0.15,
            alignment: Alignment.centerRight,
            child: Card(
              elevation: 4,
              color: Colors.deepPurple[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.red, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.person, color: Colors.white, size: 16),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sumit Shende'),
                        RatingBarIndicator(
                          rating: rating,
                          itemBuilder:
                              (context, index) =>
                                  const Icon(Icons.star, color: Colors.amber),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 1,
                            ),
                            textStyle: const TextStyle(fontSize: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            visualDensity: const VisualDensity(
                              vertical: -4,
                            ), // reduces height
                            tapTargetSize:
                                MaterialTapTargetSize
                                    .shrinkWrap, // reduces touch target size
                          ),

                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [Text('Resend Attachment')],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Orders\n26',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Request\n12',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 1,
                            ),
                            textStyle: const TextStyle(fontSize: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            visualDensity: const VisualDensity(
                              vertical: -4,
                            ), // reduces height
                            tapTargetSize:
                                MaterialTapTargetSize
                                    .shrinkWrap, // reduces touch target size
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 14,
                              ), // Optional: reduce icon size
                              SizedBox(width: 10.0),
                              Text('Sumit Shende'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Third Card with Pin
  Widget _buildThirdCardWithPin() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.red, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset('assets/approve.png', width: 50),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Your Requested approve for booking...!',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
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
