import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/models/live_match_model.dart';
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
                  child: Container(
                    height: 230,
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: live.color,
                      borderRadius: BorderRadius.circular(35),
                      image: live.backgroundImage,
                    ),
                    child: Column(
                      children: [
                        Text(
                          live.stadium,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: live.textColors,
                            letterSpacing: -1,
                          ),
                        ),
                        Text(
                          'Week 13',
                          style: TextStyle(
                            color: live.textColors,
                            letterSpacing: -1,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  live.homeLogo,
                                  height: 90,
                                  width: 90,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  live.homeTitle.toUpperCase(),
                                  style: TextStyle(
                                    color: live.textColors,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: live.textColors,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  "${live.time}'",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: live.textColors,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '${live.homeGoal} : ',
                                        style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              live.onTheWinner
                                                  ? AppColors.kprimaryColor
                                                  : live.textColors,
                                        ),
                                      ),
                                      TextSpan(
                                        text: live.awayGoal.toString(),
                                        style: TextStyle(
                                          fontSize: 36,
                                          color:
                                              live.onTheWinner
                                                  ? AppColors.kprimaryColor
                                                  : live.textColors,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                Image.asset(
                                  live.awayLogo,
                                  height: 90,
                                  width: 90,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  live.homeTitle.toUpperCase(),
                                  style: TextStyle(
                                    color: live.textColors,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  'Away',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: live.textColors,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
