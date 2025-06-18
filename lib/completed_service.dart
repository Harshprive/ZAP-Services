import 'package:flutter/material.dart';

class CompletedService extends StatefulWidget {
  const CompletedService({super.key});

  @override
  State<CompletedService> createState() => _CompletedServiceState();
}

class _CompletedServiceState extends State<CompletedService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top location row
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
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
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
            const SizedBox(height: 10),

            // Sub-location
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Vishwakarma Nagar, Welekar Nagar..',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 15),

            // Search bar
            const SizedBox(height: 20),

            // Card with 4 rows
            _buildFourRowCard(),
            const SizedBox(height: 40),
            Image.asset('assets/completimg.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildFourRowCard() {
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
          children: [
            const Text(
              'your Service has been completed',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Completed.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Image.asset('assets/homeimg.png'),
                    Text(
                      'Regular House\n Cleaning',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Accept action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Find Now',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          // Reject action
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.deepPurple,
                          side: const BorderSide(color: Colors.deepPurple),
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Schedule',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vishwakarma Nagar, Welekar\n Nagar naga 103, Floor Nagpur\n Maharashtra',
              style: TextStyle(fontSize: 14, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Problem Occurs button (corrected)
                ElevatedButton(
                  onPressed: () {
                    // Problem Occurs action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 0,
                      // Slightly reduced for compact height
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0, // Optional: removes shadow for flat look
                  ),
                  child: const Text(
                    'Problem Occurs',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(width: 16),

                // Red circular icon
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                const SizedBox(width: 10),

                // Text after icon
                const Text(
                  'Sumit Shende',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
