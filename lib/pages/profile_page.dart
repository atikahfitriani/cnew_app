import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, String> biodata;

  const ProfilePage({super.key, required this.biodata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(biodata['image']!),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      biodata['name']!,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      biodata['prodi']!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.credit_card,
                            color: Colors.deepPurple),
                        title: const Text('NIM'),
                        subtitle: Text(biodata['nim']!),
                      ),
                      Divider(),
                      ListTile(
                        leading:
                            const Icon(Icons.school, color: Colors.deepPurple),
                        title: const Text('Fakultas'),
                        subtitle: Text(biodata['fakultas']!),
                      ),
                      Divider(),
                      ListTile(
                        leading: const Icon(Icons.date_range,
                            color: Colors.deepPurple),
                        title: const Text('Angkatan'),
                        subtitle: Text(biodata['angkatan']!),
                      ),
                      Divider(),
                      ListTile(
                        leading:
                            const Icon(Icons.phone, color: Colors.deepPurple),
                        title: const Text('Phone'),
                        subtitle: Text(biodata['phone']!),
                      ),
                      Divider(),
                      ListTile(
                        leading: const Icon(Icons.location_on,
                            color: Colors.deepPurple),
                        title: const Text('Address'),
                        subtitle: Text(biodata['addr']!),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
