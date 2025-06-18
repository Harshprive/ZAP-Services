import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FindServicesDetail extends StatefulWidget {
  const FindServicesDetail({super.key});

  @override
  State<FindServicesDetail> createState() => _FindServicesDetailState();
}

class _FindServicesDetailState extends State<FindServicesDetail> {
  String _selectedPayment = 'online';
  double ratingValue = 4.0;
  // String _getRatingText(double rating) {
  //   if (rating >= 4.5) return "Excellent";
  //   if (rating >= 3.5) return "Good";
  //   if (rating >= 2.5) return "Average";
  //   if (rating >= 1.5) return "Poor";
  //   return "Very Poor";
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF4F23B8), Colors.white],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.search, color: Colors.black),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 2.0,
                        horizontal: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Regular House',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontFamily: 'Amaranth-Regular',
                            ),
                          ),
                          const Text(
                            'Cleaning',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontFamily: 'Amaranth-Regular',
                            ),
                          ),
                          _buildProfileCard(),
                          _buildImageGallery(),
                          const SizedBox(height: 30),
                          _buildReviewSection(),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4F23B8),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          onPressed: () {
                            _showBookingSidebar(context);
                          },
                          child: const Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileCard() {
    return Card(
      elevation: 2,
      color: const Color.fromARGB(255, 160, 196, 255),
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Container()),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/card.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            //const SizedBox(height: 8),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.person, color: Colors.deepOrange, size: 60),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sumit Shende',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //const SizedBox(height: 4),
                    // RatingBarIndicator(
                    //   rating: 4.0,
                    //   itemBuilder:
                    //       (context, index) =>
                    //           const Icon(Icons.star, color: Colors.amber),
                    //   itemCount: 5,
                    //   itemSize: 20.0,
                    //   direction: Axis.horizontal,
                    // ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: ratingValue,
                          itemBuilder:
                              (context, index) =>
                                  const Icon(Icons.star, color: Colors.amber),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          //_getRatingText(ratingValue),
                          "4",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Orders\n 26',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Request\n 12',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Cleaning',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGallery() {
    return Padding(
      padding: const EdgeInsets.all(
        16.0,
      ), // You can adjust this padding as needed
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.asset(
              'assets/cleaningfive.png',
              height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  'assets/cleaningfour.png',
                  height: 72,
                  width: 60,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Image.asset(
                  'assets/cleaningthree.png',
                  height: 72,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Image.asset(
              'assets/cleaningtwo.png',
              height: 75,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Image.asset(
              'assets/cleaningone.png',
              height: 75,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Reviews',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Divider(),
          _buildReviewCard(
            name: 'Emily Johnson',
            date: 'June 1, 2025',
            comment:
                'John did amazing job with our kitchen cabinets. Very professional, completed the work on time, and the quality is outstanding. Would definitely hire again.',
            rating: 4.5,
          ),
          const SizedBox(height: 12),
          _buildReviewCard(
            name: 'Michael Smith',
            date: 'May 25, 2025',
            comment:
                'Great service and very polite. Came on time and cleaned everything perfectly.',
            rating: 4.0,
          ),
          const SizedBox(height: 12),
          _buildReviewCard(
            name: 'Sarah Williams',
            date: 'May 18, 2025',
            comment:
                'Satisfactory work. Could improve punctuality. Otherwise great.',
            rating: 3.0,
          ),
        ],
      ),
    );
  }

  Widget _buildReviewCard({
    required String name,
    required String date,
    required String comment,
    required double rating,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.person, size: 40, color: Colors.deepPurple),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          RatingBarIndicator(
            rating: rating,
            itemBuilder:
                (context, index) => const Icon(Icons.star, color: Colors.amber),
            itemCount: 5,
            itemSize: 20.0,
            direction: Axis.horizontal,
          ),
          const SizedBox(height: 8),
          Text(comment, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  void _showBookingSidebar(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Select payment method',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text('Payment Method', style: TextStyle(fontSize: 14)),
                  const SizedBox(height: 20),
                  _buildPaymentOption(
                    icon: Icons.payment,
                    label: 'Pay Online',
                    value: 'online',
                    groupValue: _selectedPayment,
                    onChanged: (val) {
                      setModalState(() {
                        _selectedPayment = val;
                      });
                    },
                  ),
                  const SizedBox(height: 12),
                  _buildPaymentOption(
                    icon: Icons.money,
                    label: 'Pay Cash',
                    value: 'cash',
                    groupValue: _selectedPayment,
                    onChanged: (val) {
                      setModalState(() {
                        _selectedPayment = val;
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildPaymentOption({
    required IconData icon,
    required String label,
    required String value,
    required String groupValue,
    required ValueChanged<String> onChanged,
  }) {
    final bool isSelected = groupValue == value;

    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepPurple[100] : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.deepPurple),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: (val) {
                if (val != null) {
                  onChanged(val);
                }
              },
              activeColor: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
