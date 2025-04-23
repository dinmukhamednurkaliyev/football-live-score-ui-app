import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/models/live_match_model.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({required this.liveMatch, super.key});
  final LiveMatch liveMatch;

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.detailBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.detailBackgroundColor,
        actions: [
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  onDoubleTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_left_rounded),
                ),
              ),
            ),
          ),
          const Spacer(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.more_rounded),
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
