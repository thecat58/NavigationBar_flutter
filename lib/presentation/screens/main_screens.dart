import 'package:flutter/material.dart';
import 'package:munu/presentation/views/motor_view.dart';
import 'package:munu/presentation/views/user_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selecteIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screems = [const MotorsView(), const UsersView()];
    return Scaffold(
      body: IndexedStack(
        index: selecteIndex,
        children: screems,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selecteIndex,
        onTap: (value) {
          setState(() {
            selecteIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.two_wheeler),
            activeIcon: const Icon(Icons.motorcycle),
            label: 'Motors',
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_3_outlined),
            activeIcon: const Icon(Icons.person_3),
            label: 'User',
            backgroundColor: colors.tertiary,
          ),
        ],
      ),
    );
  }
}
