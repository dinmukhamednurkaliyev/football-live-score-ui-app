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
  List<Map<String, dynamic>> tabs = [
    {'label': 'Stats'},
    {'label': 'H2H'},
    {'label': 'Table'},
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.detailBackgroundColor,
      appBar: headerParts(context),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 120),
              padding: const EdgeInsets.only(top: 180, right: 20, left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, blurRadius: 20),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(tabs.length, (index) {
                      final tab = tabs[index];
                      return Container(
                        decoration: BoxDecoration(
                          color:
                              selectedIndex == index
                                  ? AppColors.kprimaryColor
                                  : AppColors.detailBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          tab['label'] as String,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                selectedIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Positioned(
              top: 25,
              left: 25,
              right: 25,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: widget.liveMatch.color,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -230,
                      child: Transform.rotate(
                        angle: 45,
                        child: Opacity(
                          opacity: 0.2,
                          child: Image.asset('assets/images/cl.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            widget.liveMatch.stadium,
                            style: TextStyle(
                              fontSize: 15,
                              color: widget.liveMatch.textColors,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Image.asset(
                                widget.liveMatch.homeLogo,
                                width: 90,
                                height: 90,
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffFFF4E5),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: AppColors.kprimaryColor,
                                          size: 10,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Live',
                                          style: TextStyle(
                                            color: AppColors.kprimaryColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              widget.liveMatch.homeGoal
                                                  .toString(),
                                          style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                widget.liveMatch.onTheWinner
                                                    ? AppColors.kprimaryColor
                                                    : widget
                                                        .liveMatch
                                                        .textColors,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' : ${widget.liveMatch.awayGoal}',
                                          style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                widget.liveMatch.onTheWinner
                                                    ? widget
                                                        .liveMatch
                                                        .textColors
                                                    : AppColors.kprimaryColor,
                                          ),
                                        ),
                                        // TODO: Continue Developing the app
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar headerParts(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
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
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_left_rounded),
              ),
            ),
          ),
        ),
        const Spacer(),
        const Column(
          children: [
            Text(
              'Champions League',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: -1,
              ),
            ),
            Text(
              'GROUP STAGE',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
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
    );
  }
}
