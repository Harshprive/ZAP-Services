import 'package:flutter/material.dart';

//// new code

class FindServices extends StatelessWidget {
  const FindServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Address | near jb nagar",
                style: TextStyle(fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle change address
              },
              child: const Text(
                'Change',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          color: const Color.fromARGB(
            255,
            211,
            210,
            242,
          ), // Card background color
          margin: const EdgeInsets.all(30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            height: 250,
            child: Row(
              children: [
                // Image section with white background.
                const SizedBox(width: 16),
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white, // White background behind image
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/cleaning.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                // Text section
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Finding\nThe best\nService\nNear you",
                          style: TextStyle(
                            fontSize: 20,

                            fontWeight: FontWeight.w900,
                            //height: 1.2,
                            //letterSpacing: 1.0,
                            color: Color.fromARGB(255, 79, 35, 184),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Please fill the details\nso we can provide you with\nthe best of our service",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
