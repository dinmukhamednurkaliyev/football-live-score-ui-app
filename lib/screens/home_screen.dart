import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Material(
              elevation: 0.2,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.window_rounded),
              ),
            ),
          ),
          const Spacer(),
          const Row(
            children: [
              Text(
                'S',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: -2,
                ),
              ),
              Icon(
                Icons.sports_soccer,
                color: AppColors.kprimaryColor,
                size: 25,
              ),
              Text(
                'ccer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: -2,
                ),
              ),
              Text(
                'Nerds',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: AppColors.kprimaryColor,
                  letterSpacing: -2,
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Material(
              elevation: 0.2,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: const Stack(
                  children: [
                    Icon(Icons.notifications),
                    Positioned(
                      right: 1,
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: AppColors.kprimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
