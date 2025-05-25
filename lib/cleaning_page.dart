import 'package:flutter/material.dart';

class CleaningPage extends StatefulWidget {
  const CleaningPage({super.key});

  @override
  State<CleaningPage> createState() => _CleaningPageState();
}

class _CleaningPageState extends State<CleaningPage> {
  Widget buildServiceBox({
    required IconData icon,
    required String title,
    required VoidCallback onFindNow,
    required VoidCallback onSchedule,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.purpleAccent, // Set your desired border color here
            width: 2.0, // Optional: set the thickness of the border
          ),
        ),
        child: Column(
          children: [
            Icon(icon, size: 90, color: Colors.purpleAccent),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 120,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: onFindNow,
                child: const Text(
                  'Find Now',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 120,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 79, 35, 184),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: onSchedule,
                child: const Text(
                  'Schedule',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildServiceCard(List<Widget> boxes) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children: [boxes[0], const SizedBox(width: 16), boxes[1]]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Handle search button press
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF4F23B8), Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                'Cleaning',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Services',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Card 1
              buildServiceCard([
                buildServiceBox(
                  icon: Icons.home_outlined,
                  title: 'Regular House\nCleaning',
                  onFindNow: () {},
                  onSchedule: () {},
                ),
                buildServiceBox(
                  icon: Icons.cleaning_services,
                  title: 'Deep\nCleaning',
                  onFindNow: () {},
                  onSchedule: () {},
                ),
              ]),

              // Card 2
              buildServiceCard([
                buildServiceBox(
                  icon: Icons.bathroom,
                  title: 'Carpet\nCleaning',
                  onFindNow: () {},
                  onSchedule: () {},
                ),
                buildServiceBox(
                  icon: Icons.window,
                  title: 'Window\nCleaning',
                  onFindNow: () {},
                  onSchedule: () {},
                ),
              ]),

              // Card 3
              buildServiceCard([
                buildServiceBox(
                  icon: Icons.apartment,
                  title: 'Office\nCleaning',
                  onFindNow: () {},
                  onSchedule: () {},
                ),
                buildServiceBox(
                  icon: Icons.bathroom,
                  title: 'Bathroom\nCleaning',
                  onFindNow: () {},
                  onSchedule: () {},
                ),
              ]),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
