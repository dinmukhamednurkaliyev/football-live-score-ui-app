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
        actions: [],
      ),
    );
  }
}
