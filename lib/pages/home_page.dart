import 'package:flutter/material.dart';
import 'package:le_technophile_gemini/pages/chat_history_screen.dart';
import 'package:le_technophile_gemini/pages/chat_screen.dart';
import 'package:le_technophile_gemini/pages/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page view controller
  final PageController _pageController = PageController();
  //list of screens
  final List<Widget> _screens = [
    const ChatHistoryScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 0,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: "Chat Hisotry"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
