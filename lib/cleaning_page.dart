import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class CleaningPage extends StatefulWidget {
  final bool showSidebar;
  const CleaningPage({super.key, this.showSidebar = false});

  @override
  State<CleaningPage> createState() => _CleaningPageState();
}

// This is the updated code
class _CleaningPageState extends State<CleaningPage> {
  bool _showSidebar = false;
  String? selectedWeek;
  PlatformFile? pickedFile;

  @override
  void initState() {
    super.initState();
    _showSidebar = widget.showSidebar;
  }

  Future<void> pickFile(List<String> allowedExtensions) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: allowedExtensions,
    );
    if (result != null) {
      setState(() {
        pickedFile = result.files.first;
      });
    }
  }

  Widget buildServiceBox({
    required IconData icon,
    required String title,
    required VoidCallback onFindNow,
    required VoidCallback onSchedule,
    required Color borderColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor, width: 2.0),
        ),
        child: Column(
          children: [
            Icon(icon, size: 90, color: borderColor),
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
                  backgroundColor: const Color.fromARGB(255, 80, 36, 185),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: onFindNow,
                child: const Text(
                  'Find Now',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                onPressed: onSchedule,
                child: const Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 80, 36, 185),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAllServicesCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                buildServiceBox(
                  icon: Icons.home_outlined,
                  title: 'Regular House\nCleaning',
                  onFindNow: () => setState(() => _showSidebar = true),
                  onSchedule: () {},
                  borderColor: Colors.lightBlue,
                ),
                const SizedBox(width: 16),
                buildServiceBox(
                  icon: Icons.cleaning_services,
                  title: 'Deep\nCleaning',
                  onFindNow: () => setState(() => _showSidebar = true),
                  onSchedule: () {},
                  borderColor: Colors.amber.shade800,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                buildServiceBox(
                  icon: Icons.bathroom,
                  title: 'Carpet\nCleaning',
                  onFindNow: () => setState(() => _showSidebar = true),
                  onSchedule: () {},
                  borderColor: Colors.pink,
                ),
                const SizedBox(width: 16),
                buildServiceBox(
                  icon: Icons.window,
                  title: 'Window\nCleaning',
                  onFindNow: () => setState(() => _showSidebar = true),
                  onSchedule: () {},
                  borderColor: Colors.teal,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                buildServiceBox(
                  icon: Icons.apartment,
                  title: 'Office\nCleaning',
                  onFindNow: () => setState(() => _showSidebar = true),
                  onSchedule: () {},
                  borderColor: Colors.deepPurple,
                ),
                const SizedBox(width: 16),
                buildServiceBox(
                  icon: Icons.bathroom,
                  title: 'Bathroom\nCleaning',
                  onFindNow: () => setState(() => _showSidebar = true),
                  onSchedule: () {},
                  borderColor: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSidebar() {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.1,
      maxChildSize: 0.75,
      builder: (_, controller) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView(
              controller: controller,
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'Issue',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Amaranth-Regular',
                  ),
                ),
                const SizedBox(height: 8),
                const Text('Send request to particular service provider'),
                const SizedBox(height: 12),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your issue',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Upload issue by adding attachments:'),
                const SizedBox(height: 16),
                const Text('Select attachments type'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      onPressed: () => pickFile(['jpg', 'jpeg', 'png']),
                      icon: const Icon(Icons.image),
                      label: const Text("Image"),
                    ),
                    TextButton.icon(
                      onPressed: () => pickFile(['mp4', 'avi']),
                      icon: const Icon(Icons.videocam),
                      label: const Text("Video"),
                    ),
                    TextButton.icon(
                      onPressed: () => pickFile(['mp3', 'wav']),
                      icon: const Icon(Icons.mic),
                      label: const Text("Audio"),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap:
                      () => pickFile([
                        'jpg',
                        'jpeg',
                        'png',
                        'mp4',
                        'avi',
                        'mp3',
                        'wav',
                      ]),
                  child: Container(
                    height: 150.0,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[100],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/upload.png', height: 50),
                          const SizedBox(height: 20.0),
                          const Text("Click to Upload Document"),
                          if (pickedFile != null) ...[
                            const SizedBox(height: 8),
                            Text("Selected: ${pickedFile!.name}"),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('In how many days minimum it needs to be resolved?'),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: [
                    ChoiceChip(
                      label: Text(
                        "Week 1",
                        style: TextStyle(
                          color:
                              selectedWeek == "Week 1"
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
                      selected: selectedWeek == "Week 1",
                      selectedColor: Colors.deepPurple,
                      onSelected:
                          (_) => setState(() => selectedWeek = "Week 1"),
                    ),
                    ChoiceChip(
                      label: Text(
                        "Week 2",
                        style: TextStyle(
                          color:
                              selectedWeek == "Week 2"
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
                      selected: selectedWeek == "Week 2",
                      selectedColor: Colors.deepPurple,
                      onSelected:
                          (_) => setState(() => selectedWeek = "Week 2"),
                    ),
                    ChoiceChip(
                      label: Text(
                        "Week 3",
                        style: TextStyle(
                          color:
                              selectedWeek == "Week 3"
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
                      selected: selectedWeek == "Week 3",
                      selectedColor: Colors.deepPurple,
                      onSelected:
                          (_) => setState(() => selectedWeek = "Week 3"),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (pickedFile != null && selectedWeek != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Issue submitted successfully!'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Please upload a file and select a week',
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Submit Issue",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF4F23B8), Colors.white],
              ),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  const Text(
                    'Cleaning',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  buildAllServicesCard(),
                ],
              ),
            ),
          ),
          if (_showSidebar) buildSidebar(),
        ],
      ),
    );
  }
}
