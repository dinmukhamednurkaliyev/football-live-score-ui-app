import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/models/live_match_model.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';

class LiveMatchData extends StatelessWidget {
  const LiveMatchData({required this.live, super.key});

  final LiveMatch live;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  Image.asset(live.homeLogo, height: 90, width: 90),
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
                                    ? live.textColors
                                    : AppColors.kprimaryColor,
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
                  Image.asset(live.awayLogo, height: 90, width: 90),
                  const SizedBox(height: 10),
                  Text(
                    live.awayTitle.toUpperCase(),
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
    );
  }
}
