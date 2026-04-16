import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SecondaryNumbersScreen(),
    );
  }
}

class SecondaryNumbersScreen extends StatelessWidget {
  const SecondaryNumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071A1A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Secondary Numbers",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Card 1
              numberCard(
                number: "+880 1234 567890",
                label: "Home • Added 2mo ago",
              ),

              const SizedBox(height: 20),

              // Card 2
              numberCard(
                number: "+880 9876 543210",
                label: "Work • Unverified",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget numberCard({required String number, required String label}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F2B2B),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          // Phone Icon
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(Icons.phone, color: Colors.white70),
          ),

          const SizedBox(width: 15),

          // Text Section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),

          // Icons (Edit + Delete)
          Row(
            children: const [
              Icon(Icons.edit, color: Colors.white54),
              SizedBox(width: 15),
              Icon(Icons.delete, color: Colors.white54),
            ],
          )
        ],
      ),
    );
  }
}
