import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/models/upcoming_model.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';

class UpcomingMatches extends StatelessWidget {
  const UpcomingMatches({required this.upcoming, super.key});

  final UpcomingMatch upcoming;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -5),
                  color:
                      upcoming.isFavorite
                          ? AppColors.kprimaryColor
                          : Colors.black12,
                ),
              ],
            ),
            child: Row(
              children: [
                Text(
                  upcoming.homeTitle,
                  style: TextStyle(
                    fontSize: 16.5,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    Image.asset(upcoming.homeLogo, height: 45, width: 45),
                    const Text(
                      'Home',
                      style: TextStyle(fontSize: 11, letterSpacing: -1),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      upcoming.time,
                      style: const TextStyle(
                        fontSize: 18,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(upcoming.date, style: const TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(upcoming.awayLogo, height: 45, width: 45),
                    const Text(
                      'Away',
                      style: TextStyle(fontSize: 11, letterSpacing: -1),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  upcoming.awayTitle,
                  style: TextStyle(
                    fontSize: 16.5,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: Icon(
              Icons.star,
              color:
                  upcoming.isFavorite ? AppColors.kprimaryColor : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
