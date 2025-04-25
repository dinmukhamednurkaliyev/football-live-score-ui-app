import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';

class LiveMatchStats extends StatelessWidget {
  const LiveMatchStats({
    required this.homeStats,
    required this.awayStats,
    required this.title,
    required this.homeValue,
    required this.awayValue,
    required this.isHomeWinner,
    super.key,
  });
  final int homeStats;
  final int awayStats;
  final String title;
  final double homeValue;
  final double awayValue;
  final bool isHomeWinner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                homeStats.toString(),
                style: TextStyle(
                  color:
                      isHomeWinner
                          ? AppColors.kprimaryColor
                          : AppColors.ksecondryColor,
                  fontSize: 16,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                awayStats.toString(),
                style: TextStyle(
                  color:
                      !isHomeWinner
                          ? AppColors.ksecondryColor
                          : AppColors.kprimaryColor,
                  fontSize: 16,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: RotatedBox(
                  quarterTurns: 2,
                  child: LinearProgressIndicator(
                    value: homeValue,
                    minHeight: 10,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: AlwaysStoppedAnimation(
                      isHomeWinner
                          ? AppColors.kprimaryColor
                          : AppColors.ksecondryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LinearProgressIndicator(
                  value: awayValue,
                  minHeight: 10,
                  backgroundColor: Colors.grey.shade200,
                  valueColor: AlwaysStoppedAnimation(
                    !isHomeWinner
                        ? AppColors.kprimaryColor
                        : AppColors.ksecondryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
