import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/models/live_match_model.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';
import 'package:football_live_score_ui_app/widgets/live_match.dart';

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
      appBar: headerParts(),
      body: Column(
        children: [
          liveMatchText(),
          SizedBox(
            height: 230,
            child: ListView.builder(
              itemCount: liveMatches.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final live = liveMatches[index];
                return GestureDetector(
                  onTap: () {},
                  child: LiveMatchData(live: live),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar headerParts() {
    return AppBar(
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
            Icon(Icons.sports_soccer, color: AppColors.kprimaryColor, size: 25),
            Text(
              'ccer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: -2,
              ),
            ),
            Text(
              ' Nerds',
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
    );
  }

  Padding liveMatchText() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Text(
            'Live Match',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: -1.5,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08), blurRadius: 20),
              ],
            ),
            child: Row(
              children: [
                Image.asset('assets/images/pl.png', width: 30, height: 30),
                const SizedBox(width: 3),
                const Text(
                  'Premier League',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
