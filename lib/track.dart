import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 38.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Location row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Manish Nagar',
                      style: TextStyle(
                        fontSize: 26,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple[50],
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                  ),
                  child: const SizedBox(
                    width: 36,
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
            // Address
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Vishwakarma Nagar, Welekar Nagar..',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            // Search bar
            const SizedBox(height: 30),

            // Custom Card with 4 Rows
            _buildFirstCard(),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/trackimg.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.grey, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Service Provider is on the way',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              'Arriving in 1.5 Hours',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 14),
            const Text(
              'Vishwakarma Nagar, Welekar\n Nagar naga 103, Floor Nagpur\n Maharashtra',
              style: TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 2,
                    ),
                    textStyle: const TextStyle(fontSize: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
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
                      // Optional: reduce icon size
                      SizedBox(width: 10.0),
                      Text('Cancel Service'),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 217, 217, 217),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 2,
                    ),
                    textStyle: const TextStyle(fontSize: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
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
                      // Optional: reduce icon size
                      //SizedBox(width: 10.0),
                      Text('View Service Details'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
