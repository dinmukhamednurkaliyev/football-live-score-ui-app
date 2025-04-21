import 'package:flutter/material.dart';
import 'package:football_live_score_ui_app/screens/home_screen.dart';
import 'package:football_live_score_ui_app/theme/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  final icons = [
    Icons.home_outlined,
    Icons.calendar_month_outlined,
    Icons.area_chart_rounded,
    Icons.person_outline,
  ];
  final titles = ['Home', 'Calendar', 'Standing', 'Account'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.015),
              blurRadius: 8,
              spreadRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            4,
            (index) => BottomNavBarItems(
              title: titles[index],
              icon: icons[index],
              isActive: currentTab == index,
              onTab: () => setState(() => currentTab = index),
            ),
          ),
        ),
      ),
      body: screens[currentTab],
    );
  }
}

class BottomNavBarItems extends StatelessWidget {
  const BottomNavBarItems({
    required this.title,
    required this.isActive,
    required this.onTab,
    required this.icon,
    super.key,
  });
  final String title;
  final bool isActive;
  final Function() onTab;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? AppColors.kprimaryColor : Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Icon(icon, color: isActive ? Colors.white : Colors.grey.shade400),
            if (isActive)
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
          ],
        ),
      ),
    );
  }
}
